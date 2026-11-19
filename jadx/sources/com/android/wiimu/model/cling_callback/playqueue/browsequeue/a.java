package com.android.wiimu.model.cling_callback.playqueue.browsequeue;

import org.xml.sax.helpers.DefaultHandler;

/* JADX INFO: loaded from: classes.dex */
public abstract class a extends DefaultHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected String f22359a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected f f22360b = null;

    public a(String str) {
        this.f22359a = str;
    }

    public abstract f a();
}
