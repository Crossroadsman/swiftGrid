/*:
In order to draw graphics on the view, it is necessary to create a subclass of the UIView and override the drawRect method.

In the project, create a new file (Cocoa Touch class, subclass should be set to UIView), called Draw2D.




*/


enum GridObject {
    case Empty
    case Wall
    case Player
    case Pickup

}

class Grid {

    var gridLayout: [[GridObject]] = []
    
    var gridWidth: Int = 0
    var gridHeight: Int = 0
    
    init((_ width: Int, _ height: Int)) {
        self.gridWidth = width
        self.gridHeight = height
        
        var heightArray = [GridObject](count: gridHeight, repeatedValue: Empty) // inner array
        var widthArray = [[GridObject]](count: gridWidth, repeatedValue: heightArray) // outer array
        
        self.gridLayout = widthArray
    }

    
    func getGridValue((_ x: Int, _ y: Int)) -> GridObject {
        return gridLayout[x][y]
    }
    
    func setGridValue((_ x: Int, _ y: Int),val: GridObject) {
        gridLayout[x][y] = val
    }
    
    func setWall((_ x: Int, _ y: Int)) {
        gridLayout[x][y] = Wall
    }

    
    func drawGrid() {
        // nested for loop
        // switch value
        // if empty: .
        // if wall: #
        // if player: @
        // if pickup: *
    
        for outerVal in gridLayout {
            for innerVal in gridLayout[outerVal] {
                switch innerVal {
                    case Empty:
                    print(".")
                    case Wall:
                    print("#")
                    case Player:
                    print("@")
                    case Pickup:
                    print("*")
                
                }
            }
        }
    
    }
    
    
    
}


