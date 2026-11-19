package com.otaliastudios.cameraview;

import com.otaliastudios.cameraview.controls.Audio;
import com.otaliastudios.cameraview.controls.AudioCodec;
import com.otaliastudios.cameraview.controls.Control;
import com.otaliastudios.cameraview.controls.Engine;
import com.otaliastudios.cameraview.controls.Facing;
import com.otaliastudios.cameraview.controls.Flash;
import com.otaliastudios.cameraview.controls.Grid;
import com.otaliastudios.cameraview.controls.Hdr;
import com.otaliastudios.cameraview.controls.Mode;
import com.otaliastudios.cameraview.controls.PictureFormat;
import com.otaliastudios.cameraview.controls.Preview;
import com.otaliastudios.cameraview.controls.VideoCodec;
import com.otaliastudios.cameraview.controls.WhiteBalance;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraOptions {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashSet f38822a = new HashSet(5);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashSet f38823b = new HashSet(2);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashSet f38824c = new HashSet(4);
    public final HashSet d = new HashSet(2);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashSet f38825e = new HashSet(15);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final HashSet f38826f = new HashSet(5);
    public final HashSet g = new HashSet(4);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final HashSet f38827h = new HashSet(3);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final HashSet f38828i = new HashSet(2);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final HashSet f38829j = new HashSet(2);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f38830k;
    public boolean l;
    public float m;
    public float n;
    public boolean o;
    public float p;
    public float q;

    public final boolean a(Control control) {
        Collection collectionUnmodifiableSet;
        Class<?> cls = control.getClass();
        if (cls.equals(Audio.class)) {
            collectionUnmodifiableSet = Arrays.asList(Audio.values());
        } else if (cls.equals(Facing.class)) {
            collectionUnmodifiableSet = Collections.unmodifiableSet(this.f38823b);
        } else if (cls.equals(Flash.class)) {
            collectionUnmodifiableSet = Collections.unmodifiableSet(this.f38824c);
        } else if (cls.equals(Grid.class)) {
            collectionUnmodifiableSet = Arrays.asList(Grid.values());
        } else if (cls.equals(Hdr.class)) {
            collectionUnmodifiableSet = Collections.unmodifiableSet(this.d);
        } else if (cls.equals(Mode.class)) {
            collectionUnmodifiableSet = Arrays.asList(Mode.values());
        } else if (cls.equals(VideoCodec.class)) {
            collectionUnmodifiableSet = Arrays.asList(VideoCodec.values());
        } else if (cls.equals(AudioCodec.class)) {
            collectionUnmodifiableSet = Arrays.asList(AudioCodec.values());
        } else if (cls.equals(WhiteBalance.class)) {
            collectionUnmodifiableSet = Collections.unmodifiableSet(this.f38822a);
        } else if (cls.equals(Engine.class)) {
            collectionUnmodifiableSet = Arrays.asList(Engine.values());
        } else if (cls.equals(Preview.class)) {
            collectionUnmodifiableSet = Arrays.asList(Preview.values());
        } else {
            collectionUnmodifiableSet = cls.equals(PictureFormat.class) ? Collections.unmodifiableSet(this.f38828i) : Collections.EMPTY_LIST;
        }
        return collectionUnmodifiableSet.contains(control);
    }
}
