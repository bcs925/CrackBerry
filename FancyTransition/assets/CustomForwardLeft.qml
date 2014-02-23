import bb.cascades 1.0

ParallelAnimation {
    animations: [
        ScaleTransition {
            toX: 1.0
            toY: 1.0
            duration: 700
        },
        SequentialAnimation {
            animations: [
                TranslateTransition {
                    toX: -400
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
