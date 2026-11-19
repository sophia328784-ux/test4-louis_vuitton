package com.linecorp.linesdk;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.tr;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class LineCredential implements Parcelable {
    public static final Parcelable.Creator<LineCredential> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LineAccessToken f36065b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f36066c;

    /* JADX INFO: renamed from: com.linecorp.linesdk.LineCredential$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<LineCredential> {
        @Override // android.os.Parcelable.Creator
        public final LineCredential createFromParcel(Parcel parcel) {
            return new LineCredential(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final LineCredential[] newArray(int i2) {
            return new LineCredential[i2];
        }
    }

    public LineCredential(Parcel parcel) {
        this.f36065b = (LineAccessToken) parcel.readParcelable(LineAccessToken.class.getClassLoader());
        ArrayList arrayList = new ArrayList(8);
        parcel.readStringList(arrayList);
        this.f36066c = Scope.b(arrayList);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        LineCredential lineCredential = (LineCredential) obj;
        if (this.f36065b.equals(lineCredential.f36065b)) {
            return this.f36066c.equals(lineCredential.f36066c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f36066c.hashCode() + (this.f36065b.hashCode() * 31);
    }

    public final String toString() {
        return tr.m(new StringBuilder("LineCredential{accessToken=#####, scopes="), this.f36066c, '}');
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.f36065b, i2);
        parcel.writeStringList(Scope.a(this.f36066c));
    }

    public LineCredential(LineAccessToken lineAccessToken, List<Scope> list) {
        this.f36065b = lineAccessToken;
        this.f36066c = list;
    }
}
