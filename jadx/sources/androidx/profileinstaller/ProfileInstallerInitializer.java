package androidx.profileinstaller;

import android.content.Context;
import android.view.Choreographer;
import androidx.startup.Initializer;
import defpackage.o6;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ProfileInstallerInitializer implements Initializer<Result> {

    public static class Result {
    }

    @Override // androidx.startup.Initializer
    public final List a() {
        return Collections.EMPTY_LIST;
    }

    @Override // androidx.startup.Initializer
    public final Object b(Context context) {
        Choreographer.getInstance().postFrameCallback(new o6(this, context.getApplicationContext()));
        return new Result();
    }
}
