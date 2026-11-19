package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ImmutableList;
import defpackage.fc;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class TextInformationFrame extends Id3Frame {
    public static final Parcelable.Creator<TextInformationFrame> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f28257c;
    public final ImmutableList d;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.metadata.id3.TextInformationFrame$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<TextInformationFrame> {
        @Override // android.os.Parcelable.Creator
        public final TextInformationFrame createFromParcel(Parcel parcel) {
            String string = parcel.readString();
            string.getClass();
            String string2 = parcel.readString();
            String[] strArrCreateStringArray = parcel.createStringArray();
            strArrCreateStringArray.getClass();
            return new TextInformationFrame(string, string2, ImmutableList.u(strArrCreateStringArray));
        }

        @Override // android.os.Parcelable.Creator
        public final TextInformationFrame[] newArray(int i2) {
            return new TextInformationFrame[i2];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TextInformationFrame(String str, String str2, List<String> list) {
        super(str);
        Assertions.a(!list.isEmpty());
        this.f28257c = str2;
        ImmutableList immutableListT = ImmutableList.t(list);
        this.d = immutableListT;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && TextInformationFrame.class == obj.getClass()) {
            TextInformationFrame textInformationFrame = (TextInformationFrame) obj;
            if (Util.a(this.f28250b, textInformationFrame.f28250b) && Util.a(this.f28257c, textInformationFrame.f28257c) && this.d.equals(textInformationFrame.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iB = fc.b(527, 31, this.f28250b);
        String str = this.f28257c;
        return this.d.hashCode() + ((iB + (str != null ? str.hashCode() : 0)) * 31);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public final String toString() {
        return this.f28250b + ": description=" + this.f28257c + ": values=" + this.d;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f28250b);
        parcel.writeString(this.f28257c);
        parcel.writeStringArray((String[]) this.d.toArray(new String[0]));
    }

    @Deprecated
    public TextInformationFrame(String str, String str2, String str3) {
        this(str, str2, ImmutableList.A(str3));
    }
}
