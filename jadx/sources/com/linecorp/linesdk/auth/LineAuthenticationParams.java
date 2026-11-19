package com.linecorp.linesdk.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.linecorp.linesdk.Scope;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class LineAuthenticationParams implements Parcelable {
    public static final Parcelable.Creator<LineAuthenticationParams> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f36122b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f36123c;
    public final BotPrompt d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Locale f36124e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f36125f;
    public final WebAuthenticationMethod g;

    /* JADX INFO: renamed from: com.linecorp.linesdk.auth.LineAuthenticationParams$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<LineAuthenticationParams> {
        @Override // android.os.Parcelable.Creator
        public final LineAuthenticationParams createFromParcel(Parcel parcel) {
            return new LineAuthenticationParams(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final LineAuthenticationParams[] newArray(int i2) {
            return new LineAuthenticationParams[i2];
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class BotPrompt {
        private static final /* synthetic */ BotPrompt[] $VALUES;
        public static final BotPrompt aggressive;
        public static final BotPrompt normal;

        static {
            BotPrompt botPrompt = new BotPrompt("normal", 0);
            normal = botPrompt;
            BotPrompt botPrompt2 = new BotPrompt("aggressive", 1);
            aggressive = botPrompt2;
            $VALUES = new BotPrompt[]{botPrompt, botPrompt2};
        }

        public static BotPrompt valueOf(String str) {
            return (BotPrompt) Enum.valueOf(BotPrompt.class, str);
        }

        public static BotPrompt[] values() {
            return (BotPrompt[]) $VALUES.clone();
        }
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public List f36126a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f36127b;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class WebAuthenticationMethod {
        private static final /* synthetic */ WebAuthenticationMethod[] $VALUES;
        public static final WebAuthenticationMethod email;
        public static final WebAuthenticationMethod qrCode;

        static {
            WebAuthenticationMethod webAuthenticationMethod = new WebAuthenticationMethod("email", 0);
            email = webAuthenticationMethod;
            WebAuthenticationMethod webAuthenticationMethod2 = new WebAuthenticationMethod("qrCode", 1);
            qrCode = webAuthenticationMethod2;
            $VALUES = new WebAuthenticationMethod[]{webAuthenticationMethod, webAuthenticationMethod2};
        }

        public static WebAuthenticationMethod valueOf(String str) {
            return (WebAuthenticationMethod) Enum.valueOf(WebAuthenticationMethod.class, str);
        }

        public static WebAuthenticationMethod[] values() {
            return (WebAuthenticationMethod[]) $VALUES.clone();
        }
    }

    public LineAuthenticationParams(Parcel parcel) {
        this.f36122b = Scope.b(parcel.createStringArrayList());
        this.f36123c = parcel.readString();
        String string = parcel.readString();
        this.d = (BotPrompt) (string != null ? Enum.valueOf(BotPrompt.class, string) : null);
        this.f36124e = (Locale) parcel.readSerializable();
        this.f36125f = parcel.readString();
        String string2 = parcel.readString();
        this.g = (WebAuthenticationMethod) (string2 != null ? Enum.valueOf(WebAuthenticationMethod.class, string2) : null);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeStringList(Scope.a(this.f36122b));
        parcel.writeString(this.f36123c);
        BotPrompt botPrompt = this.d;
        parcel.writeString(botPrompt != null ? botPrompt.name() : null);
        parcel.writeSerializable(this.f36124e);
        parcel.writeString(this.f36125f);
        WebAuthenticationMethod webAuthenticationMethod = this.g;
        parcel.writeString(webAuthenticationMethod != null ? webAuthenticationMethod.name() : null);
    }

    public LineAuthenticationParams(Builder builder) {
        this.f36122b = builder.f36126a;
        this.f36123c = builder.f36127b;
        this.d = null;
        this.f36124e = null;
        this.f36125f = null;
        this.g = null;
    }
}
