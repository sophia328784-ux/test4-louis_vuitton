package com.otaliastudios.cameraview.controls;

import android.content.Context;
import android.content.res.TypedArray;
import com.otaliastudios.cameraview.CameraUtils;

/* JADX INFO: loaded from: classes3.dex */
public class ControlParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f38854a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f38855b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f38856c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f38857e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f38858f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f38859h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f38860i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f38861j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f38862k;
    public final int l;

    public ControlParser(Context context, TypedArray typedArray) {
        Facing facing;
        this.f38854a = typedArray.getInteger(38, Preview.DEFAULT.b());
        if (context == null) {
            facing = Facing.BACK;
        } else {
            facing = Facing.BACK;
            if (!CameraUtils.a(facing)) {
                Facing facing2 = Facing.FRONT;
                if (CameraUtils.a(facing2)) {
                    facing = facing2;
                }
            }
        }
        this.f38855b = typedArray.getInteger(8, facing.b());
        this.f38856c = typedArray.getInteger(10, Flash.DEFAULT.b());
        this.d = typedArray.getInteger(21, Grid.DEFAULT.b());
        this.f38857e = typedArray.getInteger(58, WhiteBalance.DEFAULT.b());
        this.f38858f = typedArray.getInteger(24, Mode.DEFAULT.b());
        this.g = typedArray.getInteger(23, Hdr.DEFAULT.b());
        this.f38859h = typedArray.getInteger(0, Audio.DEFAULT.b());
        this.f38860i = typedArray.getInteger(46, VideoCodec.DEFAULT.b());
        this.f38861j = typedArray.getInteger(2, AudioCodec.DEFAULT.b());
        this.f38862k = typedArray.getInteger(6, Engine.DEFAULT.b());
        this.l = typedArray.getInteger(25, PictureFormat.DEFAULT.b());
    }
}
