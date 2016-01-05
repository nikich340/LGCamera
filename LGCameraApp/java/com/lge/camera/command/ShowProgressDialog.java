package com.lge.camera.command;

import com.lge.camera.ControllerFunction;

public class ShowProgressDialog extends Command {
    public ShowProgressDialog(ControllerFunction function) {
        super(function);
    }

    public void execute() {
        this.mGet.showProgressDialog();
    }
}
