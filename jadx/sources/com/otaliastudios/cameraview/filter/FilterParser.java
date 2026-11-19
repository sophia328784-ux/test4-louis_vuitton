package com.otaliastudios.cameraview.filter;

import android.content.res.TypedArray;

/* JADX INFO: loaded from: classes3.dex */
public class FilterParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Filter f38966a;

    public FilterParser(TypedArray typedArray) {
        this.f38966a = null;
        try {
            this.f38966a = (Filter) Class.forName(typedArray.getString(9)).newInstance();
        } catch (Exception unused) {
            this.f38966a = new NoFilter();
        }
    }
}
