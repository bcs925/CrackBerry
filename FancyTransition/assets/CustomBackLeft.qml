import bb.cascades 1.0

ParallelAnimation {
    animations: [
        ScaleTransition {
            toX: 0.85
            toY: 0.85
            duration: 400
        },
        SequentialAnimation {
            animations: [
                TranslateTransition {
                    toX: 320
                    duration: 400
                    easingCurve: StockCurve.CubicInOut
                },
                TranslateTransition {
                    toX: 0
                    duration: 400
                    easingCurve: StockCurve.CubicInOut
                }
            ]  
        }
    ]
}
