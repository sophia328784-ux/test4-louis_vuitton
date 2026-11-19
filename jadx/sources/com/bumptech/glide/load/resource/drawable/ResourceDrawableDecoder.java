package com.bumptech.glide.load.resource.drawable;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.sightcall.session.datasource.reference.v3.ReferenceApiV3ConstKt;
import defpackage.md;
import defpackage.mt;
import defpackage.pq0;
import defpackage.r81;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ResourceDrawableDecoder implements ResourceDecoder<Uri, Drawable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Option f24835b = new Option("com.bumptech.glide.load.resource.bitmap.Downsampler.Theme", null, Option.f24396e);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f24836a;

    public ResourceDrawableDecoder(Context context) {
        this.f24836a = context.getApplicationContext();
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final boolean a(Object obj, Options options) {
        String scheme = ((Uri) obj).getScheme();
        return scheme != null && scheme.equals("android.resource");
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final /* bridge */ /* synthetic */ Resource b(Object obj, int i2, int i3, Options options) {
        return c((Uri) obj, options);
    }

    public final Resource c(Uri uri, Options options) {
        Context contextCreatePackageContext;
        int identifier;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            mt.j("Package name for ", uri, " is null or empty");
            return null;
        }
        Context context = this.f24836a;
        if (authority.equals(context.getPackageName())) {
            contextCreatePackageContext = context;
        } else {
            try {
                contextCreatePackageContext = context.createPackageContext(authority, 0);
            } catch (PackageManager.NameNotFoundException e2) {
                if (!authority.contains(context.getPackageName())) {
                    r81.j(pq0.l(uri, "Failed to obtain context or unrecognized Uri format for: "), e2);
                    return null;
                }
                contextCreatePackageContext = context;
            }
        }
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 2) {
            List<String> pathSegments2 = uri.getPathSegments();
            String authority2 = uri.getAuthority();
            String str = pathSegments2.get(0);
            String str2 = pathSegments2.get(1);
            identifier = contextCreatePackageContext.getResources().getIdentifier(str2, str, authority2);
            if (identifier == 0) {
                identifier = Resources.getSystem().getIdentifier(str2, str, ReferenceApiV3ConstKt.OS_NAME);
            }
            if (identifier == 0) {
                md.n(pq0.l(uri, "Failed to find resource id for: "));
                return null;
            }
        } else {
            if (pathSegments.size() != 1) {
                md.n(pq0.l(uri, "Unrecognized Uri format: "));
                return null;
            }
            try {
                identifier = Integer.parseInt(uri.getPathSegments().get(0));
            } catch (NumberFormatException e3) {
                r81.j(pq0.l(uri, "Unrecognized Uri format: "), e3);
                return null;
            }
        }
        Resources.Theme theme = authority.equals(context.getPackageName()) ? (Resources.Theme) options.c(f24835b) : null;
        Drawable drawableA = theme == null ? DrawableDecoderCompat.a(context, contextCreatePackageContext, identifier, null) : DrawableDecoderCompat.a(context, context, identifier, theme);
        if (drawableA != null) {
            return new NonOwnedDrawableResource(drawableA);
        }
        return null;
    }
}
