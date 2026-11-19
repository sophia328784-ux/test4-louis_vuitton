package com.batch.android.b;

import android.app.Activity;
import android.content.Context;
import com.batch.android.UserActionRunnable;
import com.batch.android.UserActionSource;
import com.batch.android.e.c0;
import com.batch.android.e.t;
import com.batch.android.json.JSONObject;
import com.batch.android.n.z;
import com.google.android.gms.tasks.Task;
import com.google.android.play.core.review.ReviewInfo;
import com.google.android.play.core.review.ReviewManager;
import com.google.android.play.core.review.ReviewManagerFactory;
import defpackage.l71;
import defpackage.y81;

/* JADX INFO: loaded from: classes.dex */
public class f implements UserActionRunnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f22954a = "RatingAction";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f22955b = "batch.rating";

    public static class a extends RuntimeException {
        public a(String str, Throwable th) {
            super(str, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Context context, c0 c0Var) {
        try {
            Activity activityB = context instanceof Activity ? (Activity) context : z.a().b();
            if (activityB == null) {
                throw new a("Could not find an Activity to use for display.", null);
            }
            ReviewManager reviewManagerCreate = ReviewManagerFactory.create(context);
            reviewManagerCreate.requestReviewFlow().addOnCompleteListener(new y81(c0Var, reviewManagerCreate, activityB, 0));
        } catch (NoClassDefFoundError unused) {
            throw new a("Is 'com.google.android.play:core' available?", null);
        }
    }

    private c0<Void> b(Context context) {
        return new c0<>(new l71(context, 8));
    }

    @Override // com.batch.android.UserActionRunnable
    public void performAction(final Context context, String str, JSONObject jSONObject, UserActionSource userActionSource) {
        if (context == null) {
            t.a(f22954a, "Tried to perform a Rating action, but no context was available");
        } else {
            b(context).a(new c0.b() { // from class: x81
                @Override // com.batch.android.e.c0.b
                public final void a(Exception exc) {
                    this.f81059a.a(context, exc);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Context context, Exception exc) {
        String message = exc instanceof a ? exc.getMessage() : null;
        if (message == null) {
            message = "This device might not have Google's services, or the Play Store version is too old.";
        }
        t.a(com.batch.android.v0.a.d, "Could not use in-app rating: ".concat(message), exc != null ? exc.getCause() : null);
        a(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(c0 c0Var, ReviewManager reviewManager, Activity activity, Task task) {
        if (task.isSuccessful()) {
            ReviewInfo reviewInfo = (ReviewInfo) task.getResult();
            if (reviewInfo == null) {
                c0Var.a((Exception) new a("Invalid reply from Play Store (-10).", null));
            }
            reviewManager.launchReviewFlow(activity, reviewInfo);
            return;
        }
        c0Var.a((Exception) new a(null, null));
    }

    private void a(Context context) {
        t.b(com.batch.android.v0.a.d, "In-app rating unavailable: trying to open store application.");
        com.batch.android.g.c cVarA = com.batch.android.g.d.a(context);
        if (cVarA != null) {
            cVarA.a(context);
        }
    }
}
