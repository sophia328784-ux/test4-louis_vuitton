package androidx.core.graphics.drawable;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.PorterDuff;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.versionedparcelable.CustomVersionedParcelable;
import defpackage.a61;
import defpackage.az;
import defpackage.ct0;
import defpackage.md;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public class IconCompat extends CustomVersionedParcelable {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final PorterDuff.Mode f12064k = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f12065a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f12066b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f12067c;
    public Parcelable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12068e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12069f;
    public ColorStateList g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public PorterDuff.Mode f12070h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f12071i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f12072j;

    public static class Api23Impl {
        public static IconCompat a(Icon icon) {
            icon.getClass();
            int type = icon.getType();
            if (type == 2) {
                return IconCompat.e(null, icon.getResPackage(), icon.getResId());
            }
            if (type == 4) {
                Uri uri = icon.getUri();
                PorterDuff.Mode mode = IconCompat.f12064k;
                uri.getClass();
                String string = uri.toString();
                string.getClass();
                IconCompat iconCompat = new IconCompat(4);
                iconCompat.f12066b = string;
                return iconCompat;
            }
            if (type != 6) {
                IconCompat iconCompat2 = new IconCompat(-1);
                iconCompat2.f12066b = icon;
                return iconCompat2;
            }
            Uri uri2 = icon.getUri();
            PorterDuff.Mode mode2 = IconCompat.f12064k;
            uri2.getClass();
            String string2 = uri2.toString();
            string2.getClass();
            IconCompat iconCompat3 = new IconCompat(6);
            iconCompat3.f12066b = string2;
            return iconCompat3;
        }
    }

    public static class Api30Impl {
        public static Icon a(Uri uri) {
            return Icon.createWithAdaptiveBitmapContentUri(uri);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface IconType {
    }

    public IconCompat() {
        this.f12065a = -1;
        this.f12067c = null;
        this.d = null;
        this.f12068e = 0;
        this.f12069f = 0;
        this.g = null;
        this.f12070h = f12064k;
        this.f12071i = null;
    }

    public static IconCompat a(Bundle bundle) {
        int i2 = bundle.getInt("type");
        IconCompat iconCompat = new IconCompat(i2);
        iconCompat.f12068e = bundle.getInt("int1");
        iconCompat.f12069f = bundle.getInt("int2");
        iconCompat.f12072j = bundle.getString("string1");
        if (bundle.containsKey("tint_list")) {
            iconCompat.g = (ColorStateList) bundle.getParcelable("tint_list");
        }
        if (bundle.containsKey("tint_mode")) {
            iconCompat.f12070h = PorterDuff.Mode.valueOf(bundle.getString("tint_mode"));
        }
        switch (i2) {
            case -1:
            case 1:
            case 5:
                iconCompat.f12066b = bundle.getParcelable("obj");
                return iconCompat;
            case 0:
            default:
                return null;
            case 2:
            case 4:
            case 6:
                iconCompat.f12066b = bundle.getString("obj");
                return iconCompat;
            case 3:
                iconCompat.f12066b = bundle.getByteArray("obj");
                return iconCompat;
        }
    }

    public static IconCompat b(Icon icon) {
        return Api23Impl.a(icon);
    }

    public static IconCompat c(Icon icon) {
        if (icon.getType() == 2 && icon.getResId() == 0) {
            return null;
        }
        return Api23Impl.a(icon);
    }

    public static IconCompat d(Bitmap bitmap) {
        bitmap.getClass();
        IconCompat iconCompat = new IconCompat(1);
        iconCompat.f12066b = bitmap;
        return iconCompat;
    }

    public static IconCompat e(Resources resources, String str, int i2) {
        str.getClass();
        if (i2 == 0) {
            md.n("Drawable resource ID must not be 0");
            return null;
        }
        IconCompat iconCompat = new IconCompat(2);
        iconCompat.f12068e = i2;
        if (resources != null) {
            try {
                iconCompat.f12066b = resources.getResourceName(i2);
            } catch (Resources.NotFoundException unused) {
                md.n("Icon resource cannot be found");
                return null;
            }
        } else {
            iconCompat.f12066b = str;
        }
        iconCompat.f12072j = str;
        return iconCompat;
    }

    public final int f() {
        int i2 = this.f12065a;
        if (i2 == -1) {
            return ((Icon) this.f12066b).getResId();
        }
        if (i2 == 2) {
            return this.f12068e;
        }
        a61.q(this, "called getResId() on ");
        return 0;
    }

    public final Uri g() {
        int i2 = this.f12065a;
        if (i2 == -1) {
            return ((Icon) this.f12066b).getUri();
        }
        if (i2 == 4 || i2 == 6) {
            return Uri.parse((String) this.f12066b);
        }
        a61.q(this, "called getUri() on ");
        return null;
    }

    public final Icon h(Context context) {
        Icon iconCreateWithBitmap;
        String resPackage;
        InputStream inputStreamOpenInputStream;
        int i2 = this.f12065a;
        switch (i2) {
            case -1:
                return (Icon) this.f12066b;
            case 0:
            default:
                md.n("Unknown type");
                return null;
            case 1:
                iconCreateWithBitmap = Icon.createWithBitmap((Bitmap) this.f12066b);
                break;
            case 2:
                if (i2 == -1) {
                    resPackage = ((Icon) this.f12066b).getResPackage();
                } else {
                    if (i2 != 2) {
                        a61.q(this, "called getResPackage() on ");
                        return null;
                    }
                    String str = this.f12072j;
                    resPackage = (str == null || TextUtils.isEmpty(str)) ? ((String) this.f12066b).split(":", -1)[0] : this.f12072j;
                }
                iconCreateWithBitmap = Icon.createWithResource(resPackage, this.f12068e);
                break;
            case 3:
                iconCreateWithBitmap = Icon.createWithData((byte[]) this.f12066b, this.f12068e, this.f12069f);
                break;
            case 4:
                iconCreateWithBitmap = Icon.createWithContentUri((String) this.f12066b);
                break;
            case 5:
                iconCreateWithBitmap = Icon.createWithAdaptiveBitmap((Bitmap) this.f12066b);
                break;
            case 6:
                if (Build.VERSION.SDK_INT >= 30) {
                    iconCreateWithBitmap = Api30Impl.a(g());
                } else {
                    if (context == null) {
                        az.w(g(), "Context is required to resolve the file uri of the icon: ");
                        return null;
                    }
                    Uri uriG = g();
                    String scheme = uriG.getScheme();
                    if ("content".equals(scheme) || "file".equals(scheme)) {
                        try {
                            inputStreamOpenInputStream = context.getContentResolver().openInputStream(uriG);
                        } catch (Exception unused) {
                            uriG.toString();
                            inputStreamOpenInputStream = null;
                        }
                    } else {
                        try {
                            inputStreamOpenInputStream = new FileInputStream(new File((String) this.f12066b));
                        } catch (FileNotFoundException unused2) {
                            uriG.toString();
                            inputStreamOpenInputStream = null;
                        }
                    }
                    if (inputStreamOpenInputStream == null) {
                        ct0.o(g(), "Cannot load adaptive icon from uri: ");
                        return null;
                    }
                    iconCreateWithBitmap = Icon.createWithAdaptiveBitmap(BitmapFactory.decodeStream(inputStreamOpenInputStream));
                }
                break;
        }
        ColorStateList colorStateList = this.g;
        if (colorStateList != null) {
            iconCreateWithBitmap.setTintList(colorStateList);
        }
        PorterDuff.Mode mode = this.f12070h;
        if (mode != f12064k) {
            iconCreateWithBitmap.setTintMode(mode);
        }
        return iconCreateWithBitmap;
    }

    public final String toString() {
        String str;
        if (this.f12065a == -1) {
            return String.valueOf(this.f12066b);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        switch (this.f12065a) {
            case 1:
                str = "BITMAP";
                break;
            case 2:
                str = "RESOURCE";
                break;
            case 3:
                str = "DATA";
                break;
            case 4:
                str = "URI";
                break;
            case 5:
                str = "BITMAP_MASKABLE";
                break;
            case 6:
                str = "URI_MASKABLE";
                break;
            default:
                str = "UNKNOWN";
                break;
        }
        sb.append(str);
        switch (this.f12065a) {
            case 1:
            case 5:
                sb.append(" size=");
                sb.append(((Bitmap) this.f12066b).getWidth());
                sb.append("x");
                sb.append(((Bitmap) this.f12066b).getHeight());
                break;
            case 2:
                sb.append(" pkg=");
                sb.append(this.f12072j);
                sb.append(" id=");
                sb.append(String.format("0x%08x", Integer.valueOf(f())));
                break;
            case 3:
                sb.append(" len=");
                sb.append(this.f12068e);
                if (this.f12069f != 0) {
                    sb.append(" off=");
                    sb.append(this.f12069f);
                }
                break;
            case 4:
            case 6:
                sb.append(" uri=");
                sb.append(this.f12066b);
                break;
        }
        if (this.g != null) {
            sb.append(" tint=");
            sb.append(this.g);
        }
        if (this.f12070h != f12064k) {
            sb.append(" mode=");
            sb.append(this.f12070h);
        }
        sb.append(")");
        return sb.toString();
    }

    public IconCompat(int i2) {
        this.f12067c = null;
        this.d = null;
        this.f12068e = 0;
        this.f12069f = 0;
        this.g = null;
        this.f12070h = f12064k;
        this.f12071i = null;
        this.f12065a = i2;
    }
}
