package com.bumptech.glide.load.resource.gif;

import android.graphics.Bitmap;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.load.engine.Initializable;
import com.bumptech.glide.load.resource.drawable.DrawableResource;

/* JADX INFO: loaded from: classes2.dex */
public class GifDrawableResource extends DrawableResource<GifDrawable> implements Initializable {
    public GifDrawableResource(GifDrawable gifDrawable) {
        super(gifDrawable);
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final void a() {
        GifDrawable gifDrawable = (GifDrawable) this.f24834b;
        gifDrawable.stop();
        gifDrawable.f24847e = true;
        GifFrameLoader gifFrameLoader = gifDrawable.f24845b.f24853a;
        RequestManager requestManager = gifFrameLoader.d;
        gifFrameLoader.f24857c.clear();
        Bitmap bitmap = gifFrameLoader.l;
        if (bitmap != null) {
            gifFrameLoader.f24858e.d(bitmap);
            gifFrameLoader.l = null;
        }
        gifFrameLoader.f24859f = false;
        GifFrameLoader.DelayTarget delayTarget = gifFrameLoader.f24861i;
        if (delayTarget != null) {
            requestManager.i(delayTarget);
            gifFrameLoader.f24861i = null;
        }
        GifFrameLoader.DelayTarget delayTarget2 = gifFrameLoader.f24863k;
        if (delayTarget2 != null) {
            requestManager.i(delayTarget2);
            gifFrameLoader.f24863k = null;
        }
        GifFrameLoader.DelayTarget delayTarget3 = gifFrameLoader.n;
        if (delayTarget3 != null) {
            requestManager.i(delayTarget3);
            gifFrameLoader.n = null;
        }
        gifFrameLoader.f24855a.clear();
        gifFrameLoader.f24862j = true;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Class b() {
        return GifDrawable.class;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final int getSize() {
        GifFrameLoader gifFrameLoader = ((GifDrawable) this.f24834b).f24845b.f24853a;
        return gifFrameLoader.f24855a.f() + gifFrameLoader.o;
    }

    @Override // com.bumptech.glide.load.resource.drawable.DrawableResource, com.bumptech.glide.load.engine.Initializable
    public final void n() {
        ((GifDrawable) this.f24834b).c().prepareToDraw();
    }
}
