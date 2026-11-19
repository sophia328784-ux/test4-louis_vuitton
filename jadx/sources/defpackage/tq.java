package defpackage;

import com.google.firebase.crashlytics.internal.persistence.CrashlyticsReportPersistence;
import java.io.File;
import java.io.FilenameFilter;
import java.nio.charset.Charset;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class tq implements FilenameFilter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f80127a;

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        switch (this.f80127a) {
            case 0:
                return str.startsWith("aqs.");
            case 1:
                Charset charset = CrashlyticsReportPersistence.f35001e;
                return str.startsWith(MvelScriptManager.VAR_EVENT);
            default:
                Charset charset2 = CrashlyticsReportPersistence.f35001e;
                return str.startsWith(MvelScriptManager.VAR_EVENT) && !str.endsWith("_");
        }
    }
}
