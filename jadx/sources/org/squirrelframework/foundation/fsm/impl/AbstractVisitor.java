package org.squirrelframework.foundation.fsm.impl;

import defpackage.fc;
import java.io.FileWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
abstract class AbstractVisitor {
    protected final StringBuilder buffer = new StringBuilder();

    public String quoteName(String str) {
        return fc.h("\"", str, "\"");
    }

    public void saveFile(String str, String str2) {
        try {
            FileWriter fileWriter = new FileWriter(str);
            fileWriter.write(str2);
            fileWriter.close();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    public void writeLine(String str) {
        StringBuilder sb = this.buffer;
        sb.append(str);
        sb.append("\n");
    }
}
