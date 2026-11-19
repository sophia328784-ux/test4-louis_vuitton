package com.google.android.gms.common.sqlite;

import android.database.AbstractWindowedCursor;
import android.database.CrossProcessCursor;
import android.database.Cursor;
import android.database.CursorWindow;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public class CursorWrapper extends android.database.CursorWrapper implements CrossProcessCursor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AbstractWindowedCursor f29324b;

    public CursorWrapper(Cursor cursor) {
        super(cursor);
        for (int i2 = 0; i2 < 10 && (cursor instanceof android.database.CursorWrapper); i2++) {
            cursor = ((android.database.CursorWrapper) cursor).getWrappedCursor();
        }
        if (!(cursor instanceof AbstractWindowedCursor)) {
            md.n("Unknown type: ".concat(cursor.getClass().getName()));
            throw null;
        }
        this.f29324b = (AbstractWindowedCursor) cursor;
    }

    @Override // android.database.CrossProcessCursor
    public final void fillWindow(int i2, CursorWindow cursorWindow) {
        this.f29324b.fillWindow(i2, cursorWindow);
    }

    @Override // android.database.CrossProcessCursor
    public final CursorWindow getWindow() {
        return this.f29324b.getWindow();
    }

    @Override // android.database.CursorWrapper
    public final /* synthetic */ Cursor getWrappedCursor() {
        return this.f29324b;
    }

    @Override // android.database.CrossProcessCursor
    public final boolean onMove(int i2, int i3) {
        return this.f29324b.onMove(i2, i3);
    }
}
