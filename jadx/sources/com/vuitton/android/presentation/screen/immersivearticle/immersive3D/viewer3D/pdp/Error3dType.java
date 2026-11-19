package com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Error3dType[], still in use, count: 1, list:
  (r0v1 com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Error3dType[]) from 0x0036: INVOKE (r0v1 com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Error3dType[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Error3dType;", "", "", "message", "Ljava/lang/String;", "getMessage", "()Ljava/lang/String;", "MissingBackground", "MissingModel", "Local3DFileLoading", "None", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class Error3dType {
    MissingBackground("missingBackground"),
    MissingModel("missingModel"),
    Local3DFileLoading("local3DFileLoading"),
    None("");

    private static final /* synthetic */ EnumEntries $ENTRIES;
    private final String message;

    static {
        $ENTRIES = EnumEntriesKt.a(error3dTypeArr);
    }

    public Error3dType(String str) {
        super(str, i);
        this.message = str;
    }

    public static Error3dType valueOf(String str) {
        return (Error3dType) Enum.valueOf(Error3dType.class, str);
    }

    public static Error3dType[] values() {
        return (Error3dType[]) $VALUES.clone();
    }
}
