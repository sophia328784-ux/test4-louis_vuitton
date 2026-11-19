package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import com.vuitton.android.R;

/* JADX INFO: loaded from: classes2.dex */
public class StringResourceValueReader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Resources f29207a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f29208b;

    public StringResourceValueReader(Context context) {
        Preconditions.h(context);
        Resources resources = context.getResources();
        this.f29207a = resources;
        this.f29208b = resources.getResourcePackageName(R.string.common_google_play_services_unknown_issue);
    }

    public final String a(String str) {
        Resources resources = this.f29207a;
        int identifier = resources.getIdentifier(str, "string", this.f29208b);
        if (identifier == 0) {
            return null;
        }
        return resources.getString(identifier);
    }
}
