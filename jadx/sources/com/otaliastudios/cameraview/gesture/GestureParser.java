package com.otaliastudios.cameraview.gesture;

import android.content.res.TypedArray;

/* JADX INFO: loaded from: classes3.dex */
public class GestureParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f38981a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f38982b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f38983c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f38984e;

    public GestureParser(TypedArray typedArray) {
        this.f38981a = typedArray.getInteger(20, GestureAction.DEFAULT_TAP.c());
        this.f38982b = typedArray.getInteger(16, GestureAction.DEFAULT_LONG_TAP.c());
        this.f38983c = typedArray.getInteger(17, GestureAction.DEFAULT_PINCH.c());
        this.d = typedArray.getInteger(18, GestureAction.DEFAULT_SCROLL_HORIZONTAL.c());
        this.f38984e = typedArray.getInteger(19, GestureAction.DEFAULT_SCROLL_VERTICAL.c());
    }
}
