package com.batch.android;

import android.app.Activity;
import android.content.Intent;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import com.batch.android.e.t;
import com.batch.android.n.r;
import defpackage.md;
import defpackage.w21;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BatchMessage f22858a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.batch.android.f0.c f22859b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.batch.android.l0.a f22860c;
    private boolean d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final i f22861e;

    public a(BatchMessage batchMessage, com.batch.android.f0.c cVar, i iVar) {
        this.f22858a = batchMessage;
        this.f22859b = cVar;
        this.f22861e = iVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        try {
            com.batch.android.n.o.a(view.getContext()).a(new Intent(com.batch.android.v0.g.f24105k));
            if (this.f22859b.c()) {
                this.f22860c = r.a(view, this.f22858a, (com.batch.android.h0.b) this.f22859b, this.f22861e, false);
            } else if (this.f22859b.b()) {
                this.f22860c = com.batch.android.n.e.a(view, this.f22858a, (com.batch.android.g0.a) this.f22859b, this.f22861e, false);
            }
            this.f22860c.l();
        } catch (Exception e2) {
            t.c(com.batch.android.v0.g.f24103i, "Could not display banner", e2);
            t.a(com.batch.android.v0.g.f24103i, "Could not show BatchBannerView: internal error. Is your anchor view valid and part of the hierarchy?");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(FrameLayout frameLayout) {
        try {
            com.batch.android.n.o.a(frameLayout.getContext()).a(new Intent(com.batch.android.v0.g.f24105k));
            if (this.f22859b.c()) {
                this.f22860c = r.a(frameLayout, this.f22858a, (com.batch.android.h0.b) this.f22859b, this.f22861e, true);
            } else if (this.f22859b.b()) {
                this.f22860c = com.batch.android.n.e.a(frameLayout, this.f22858a, (com.batch.android.g0.a) this.f22859b, this.f22861e, true);
            }
            this.f22860c.l();
        } catch (Exception e2) {
            t.c(com.batch.android.v0.g.f24103i, "Could not embed banner", e2);
            t.a(com.batch.android.v0.g.f24103i, "Could not show BatchBannerView: internal error. Is your container layout valid and part of the hierarchy.");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a(Activity activity) {
        View viewFindViewById;
        Batch.Messaging.DisplayHint batchMessageDisplayHint;
        if (activity != 0) {
            if (!(activity instanceof Batch.Messaging.DisplayHintProvider) || (batchMessageDisplayHint = ((Batch.Messaging.DisplayHintProvider) activity).getBatchMessageDisplayHint(this.f22858a)) == null) {
                viewFindViewById = null;
            } else {
                Batch.Messaging.a aVar = batchMessageDisplayHint.f22721a;
                Batch.Messaging.a aVar2 = Batch.Messaging.a.EMBED;
                viewFindViewById = batchMessageDisplayHint.f22722b;
                if (aVar == aVar2) {
                    if (viewFindViewById instanceof FrameLayout) {
                        a((FrameLayout) viewFindViewById);
                        return;
                    } else {
                        t.a(com.batch.android.v0.g.f24103i, "Could not embed BatchBannerView, internal error.");
                        return;
                    }
                }
            }
            if (viewFindViewById == null) {
                viewFindViewById = activity.findViewById(android.R.id.content);
            }
            if (viewFindViewById != null) {
                b(viewFindViewById);
                return;
            } else {
                t.a(com.batch.android.v0.g.f24103i, "Could not show BatchBannerView: the given activity doesn't seem to have a valid content view");
                return;
            }
        }
        md.n("Activity cannot be null");
    }

    public void b(View view) {
        if (view != null) {
            if (this.d) {
                t.a(com.batch.android.v0.g.f24103i, "This banner has already been shown. Ignoring.");
                return;
            } else {
                this.d = true;
                new Handler(view.getContext().getMainLooper()).post(new w21(this, view, 21));
                return;
            }
        }
        md.n("View cannot be null");
    }

    public void a(FrameLayout frameLayout) {
        if (frameLayout != null) {
            if (this.d) {
                t.a(com.batch.android.v0.g.f24103i, "This banner has already been shown. Ignoring.");
                return;
            } else {
                this.d = true;
                new Handler(frameLayout.getContext().getMainLooper()).post(new w21(this, frameLayout, 23));
                return;
            }
        }
        md.n("embedLayout cannot be null");
    }

    public void a(boolean z) {
        com.batch.android.l0.a aVar = this.f22860c;
        if (aVar != null) {
            aVar.b(z);
        }
    }
}
