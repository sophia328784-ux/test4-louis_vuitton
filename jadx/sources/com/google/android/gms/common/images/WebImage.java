package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.fc;
import defpackage.md;
import java.util.Arrays;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class WebImage extends AbstractSafeParcelable {
    public static final Parcelable.Creator<WebImage> CREATOR = new zah();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29148b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Uri f29149c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f29150e;

    /* JADX WARN: Illegal instructions before constructor call */
    public WebImage(JSONObject jSONObject) throws IllegalArgumentException {
        Uri uri = Uri.EMPTY;
        if (jSONObject.has(ConfigurationName.DOWNLOAD_PLUGIN_URL)) {
            try {
                uri = Uri.parse(jSONObject.getString(ConfigurationName.DOWNLOAD_PLUGIN_URL));
            } catch (JSONException unused) {
            }
        }
        this(uri, jSONObject.optInt("width", 0), jSONObject.optInt("height", 0));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof WebImage)) {
            WebImage webImage = (WebImage) obj;
            if (Objects.a(this.f29149c, webImage.f29149c) && this.d == webImage.d && this.f29150e == webImage.f29150e) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f29149c, Integer.valueOf(this.d), Integer.valueOf(this.f29150e)});
    }

    public final String toString() {
        Locale locale = Locale.US;
        String string = this.f29149c.toString();
        StringBuilder sbP = fc.p(this.d, this.f29150e, "Image ", "x", " ");
        sbP.append(string);
        return sbP.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29148b);
        SafeParcelWriter.j(parcel, 2, this.f29149c, i2, false);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.d);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeInt(this.f29150e);
        SafeParcelWriter.r(iQ, parcel);
    }

    public WebImage(Uri uri) throws IllegalArgumentException {
        this(uri, 0, 0);
    }

    public WebImage(Uri uri, int i2, int i3) throws IllegalArgumentException {
        this(1, uri, i2, i3);
        if (uri == null) {
            md.n("url cannot be null");
            throw null;
        }
        if (i2 < 0 || i3 < 0) {
            md.n("width and height must not be negative");
            throw null;
        }
    }

    public WebImage(int i2, Uri uri, int i3, int i4) {
        this.f29148b = i2;
        this.f29149c = uri;
        this.d = i3;
        this.f29150e = i4;
    }
}
