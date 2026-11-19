package com.sightcall.universal.util;

import android.net.Uri;
import com.google.gson.Gson;
import com.sightcall.pratik.extensions.JsonException;
import com.sightcall.universal.internal.model.OpenSdf;
import defpackage.tr;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"toSDFUri", "Landroid/net/Uri;", "", "sdk_installedRelease"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class OpenSdfMappersKt {
    public static final Uri toSDFUri(String str) throws JsonException, IllegalArgumentException {
        str.getClass();
        try {
            Uri uri = Uri.parse(((OpenSdf) new Gson().fromJson(str, OpenSdf.class)).getUrl());
            uri.getClass();
            return uri;
        } catch (Exception e2) {
            throw new JsonException(tr.g("Unable to deserialize: ", str), e2);
        }
    }
}
