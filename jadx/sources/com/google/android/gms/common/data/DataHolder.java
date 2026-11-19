package com.google.android.gms.common.data;

import android.database.AbstractWindowedCursor;
import android.database.Cursor;
import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.sqlite.CursorWrapper;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class DataHolder extends AbstractSafeParcelable implements Closeable {
    public static final Parcelable.Creator<DataHolder> CREATOR = new zad();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29141b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String[] f29142c;
    public Bundle d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CursorWindow[] f29143e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f29144f;
    public final Bundle g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[] f29145h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f29146i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f29147j;

    static {
        new ArrayList();
        new HashMap();
    }

    public DataHolder(Cursor cursor, int i2, Bundle bundle) {
        int startPosition;
        CursorWrapper cursorWrapper = new CursorWrapper(cursor);
        AbstractWindowedCursor abstractWindowedCursor = cursorWrapper.f29324b;
        String[] columnNames = cursorWrapper.getColumnNames();
        ArrayList arrayList = new ArrayList();
        try {
            int count = cursorWrapper.getCount();
            CursorWindow window = abstractWindowedCursor.getWindow();
            if (window == null || window.getStartPosition() != 0) {
                startPosition = 0;
            } else {
                window.acquireReference();
                abstractWindowedCursor.setWindow(null);
                arrayList.add(window);
                startPosition = window.getNumRows();
            }
            while (startPosition < count && cursorWrapper.moveToPosition(startPosition)) {
                CursorWindow window2 = abstractWindowedCursor.getWindow();
                if (window2 != null) {
                    window2.acquireReference();
                    abstractWindowedCursor.setWindow(null);
                } else {
                    window2 = new CursorWindow(false);
                    window2.setStartPosition(startPosition);
                    cursorWrapper.fillWindow(startPosition, window2);
                }
                if (window2.getNumRows() == 0) {
                    break;
                }
                arrayList.add(window2);
                startPosition = window2.getStartPosition() + window2.getNumRows();
            }
            cursorWrapper.close();
            this(columnNames, (CursorWindow[]) arrayList.toArray(new CursorWindow[arrayList.size()]), i2, bundle);
        } catch (Throwable th) {
            cursorWrapper.close();
            throw th;
        }
    }

    public final void W1() {
        this.d = new Bundle();
        int i2 = 0;
        while (true) {
            String[] strArr = this.f29142c;
            if (i2 >= strArr.length) {
                break;
            }
            this.d.putInt(strArr[i2], i2);
            i2++;
        }
        CursorWindow[] cursorWindowArr = this.f29143e;
        this.f29145h = new int[cursorWindowArr.length];
        int numRows = 0;
        for (int i3 = 0; i3 < cursorWindowArr.length; i3++) {
            this.f29145h[i3] = numRows;
            numRows += cursorWindowArr[i3].getNumRows() - (numRows - cursorWindowArr[i3].getStartPosition());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            try {
                if (!this.f29146i) {
                    this.f29146i = true;
                    int i2 = 0;
                    while (true) {
                        CursorWindow[] cursorWindowArr = this.f29143e;
                        if (i2 >= cursorWindowArr.length) {
                            break;
                        }
                        cursorWindowArr[i2].close();
                        i2++;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void finalize() throws Throwable {
        boolean z;
        try {
            if (this.f29147j && this.f29143e.length > 0) {
                synchronized (this) {
                    z = this.f29146i;
                }
                if (!z) {
                    close();
                    new StringBuilder(String.valueOf(toString()).length() + 178);
                }
            }
            super.finalize();
        } catch (Throwable th) {
            super.finalize();
            throw th;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.l(parcel, 1, this.f29142c);
        SafeParcelWriter.n(parcel, 2, this.f29143e, i2);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.f29144f);
        SafeParcelWriter.a(parcel, 4, this.g);
        SafeParcelWriter.p(parcel, 1000, 4);
        parcel.writeInt(this.f29141b);
        SafeParcelWriter.r(iQ, parcel);
        if ((i2 & 1) != 0) {
            close();
        }
    }

    public DataHolder(String[] strArr, CursorWindow[] cursorWindowArr, int i2, Bundle bundle) {
        this.f29146i = false;
        this.f29147j = true;
        this.f29141b = 1;
        Preconditions.h(strArr);
        this.f29142c = strArr;
        Preconditions.h(cursorWindowArr);
        this.f29143e = cursorWindowArr;
        this.f29144f = i2;
        this.g = bundle;
        W1();
    }

    public DataHolder(int i2, String[] strArr, CursorWindow[] cursorWindowArr, int i3, Bundle bundle) {
        this.f29146i = false;
        this.f29147j = true;
        this.f29141b = i2;
        this.f29142c = strArr;
        this.f29143e = cursorWindowArr;
        this.f29144f = i3;
        this.g = bundle;
    }
}
