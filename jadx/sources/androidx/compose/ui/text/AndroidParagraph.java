package androidx.compose.ui.text;

import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.TextUtils;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.RectHelper_androidKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.android.AndroidLayoutApi34;
import androidx.compose.ui.text.android.LayoutHelper;
import androidx.compose.ui.text.android.LayoutIntrinsics;
import androidx.compose.ui.text.android.TextAndroidCanvas;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.android.TextLayoutGetRangeForRectExtensions_androidKt;
import androidx.compose.ui.text.android.TextLayout_androidKt;
import androidx.compose.ui.text.android.selection.GraphemeClusterSegmentFinderApi29;
import androidx.compose.ui.text.android.selection.SegmentFinder;
import androidx.compose.ui.text.android.selection.WordIterator;
import androidx.compose.ui.text.android.selection.WordSegmentFinder;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.text.platform.AndroidParagraphHelper_androidKt;
import androidx.compose.ui.text.platform.AndroidParagraphHelper_androidKt$NoopSpan$1;
import androidx.compose.ui.text.platform.AndroidParagraphIntrinsics;
import androidx.compose.ui.text.platform.AndroidTextPaint;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import defpackage.c;
import defpackage.fc;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.crypto.CryptoServicesPermission;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bBk\b\u0016\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0014\u0010\u0013\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00120\u00110\u0010\u0012\u0012\u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u00110\u0010\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\n\u0010\u001a¨\u0006\u001b"}, d2 = {"Landroidx/compose/ui/text/AndroidParagraph;", "Landroidx/compose/ui/text/Paragraph;", "Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;", "paragraphIntrinsics", "", "maxLines", "Landroidx/compose/ui/text/style/TextOverflow;", "overflow", "Landroidx/compose/ui/unit/Constraints;", CryptoServicesPermission.CONSTRAINTS, "<init>", "(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IIJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "text", "Landroidx/compose/ui/text/TextStyle;", "style", "", "Landroidx/compose/ui/text/AnnotatedString$Range;", "Landroidx/compose/ui/text/AnnotatedString$Annotation;", "annotations", "Landroidx/compose/ui/text/Placeholder;", "placeholders", "Landroidx/compose/ui/text/font/FontFamily$Resolver;", "fontFamilyResolver", "Landroidx/compose/ui/unit/Density;", "density", "(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;IIJLandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidParagraph implements Paragraph {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AndroidParagraphIntrinsics f10413a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f10414b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f10415c;
    public final TextLayout d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CharSequence f10416e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f10417f;

    /* JADX WARN: Failed to calculate best type for var: r1v13 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v13 ??, new type: androidx.compose.ui.text.platform.AndroidTextPaint
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /* JADX WARN: Failed to calculate best type for var: r1v13 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v13 ??, new type: androidx.compose.ui.text.platform.AndroidTextPaint
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r4v17 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r4v17 ??, new type: long
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r4v18 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r4v18 ??, new type: long
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r4v19 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r4v19 ??, new type: long
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r6v3 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v3 ??, new type: long
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /* JADX WARN: Failed to calculate best type for var: r6v3 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v3 ??, new type: long
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r6v4 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v4 ??, new type: long
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v3 ??, new type: long
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryPossibleTypes(FixTypesVisitor.java:186)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:245)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        Caused by: java.lang.NullPointerException
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 5 more
        */
    public AndroidParagraph(androidx.compose.ui.text.platform.AndroidParagraphIntrinsics r23, int r24, int r25, long r26, kotlin.jvm.internal.DefaultConstructorMarker r28) {
        /*
            Method dump skipped, instruction units count: 1062
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.AndroidParagraph.<init>(androidx.compose.ui.text.platform.AndroidParagraphIntrinsics, int, int, long, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    @Override // androidx.compose.ui.text.Paragraph
    public final ResolvedTextDirection a(int i2) {
        TextLayout textLayout = this.d;
        return textLayout.g.getParagraphDirection(textLayout.g.getLineForOffset(i2)) == 1 ? ResolvedTextDirection.Ltr : ResolvedTextDirection.Rtl;
    }

    @Override // androidx.compose.ui.text.Paragraph
    public final float b(int i2) {
        return this.d.h(i2);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public final Rect c(int i2) {
        CharSequence charSequence = this.f10416e;
        if (i2 < 0 || i2 > charSequence.length()) {
            StringBuilder sbQ = fc.q(i2, "offset(", ") is out of bounds [0,");
            sbQ.append(charSequence.length());
            sbQ.append(']');
            InlineClassHelperKt.a(sbQ.toString());
        }
        TextLayout textLayout = this.d;
        float fI = textLayout.i(i2, false);
        int lineForOffset = textLayout.g.getLineForOffset(i2);
        return new Rect(fI, textLayout.h(lineForOffset), fI, textLayout.f(lineForOffset));
    }

    @Override // androidx.compose.ui.text.Paragraph
    public final void d(Canvas canvas, long j2, Shadow shadow, TextDecoration textDecoration, DrawStyle drawStyle, int i2) {
        AndroidParagraphIntrinsics androidParagraphIntrinsics = this.f10413a;
        AndroidTextPaint androidTextPaint = androidParagraphIntrinsics.g;
        int i3 = androidTextPaint.f10889c;
        androidTextPaint.d(j2);
        androidTextPaint.f(shadow);
        androidTextPaint.g(textDecoration);
        androidTextPaint.e(drawStyle);
        androidTextPaint.b(i2);
        z(canvas);
        androidParagraphIntrinsics.g.b(i3);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public final long e(int i2) {
        int i3;
        int iH;
        int iH2;
        WordIterator wordIteratorK = this.d.k();
        if (wordIteratorK.g(wordIteratorK.i(i2))) {
            wordIteratorK.a(i2);
            i3 = i2;
            while (i3 != -1 && (!wordIteratorK.g(i3) || wordIteratorK.c(i3))) {
                i3 = wordIteratorK.i(i3);
            }
        } else {
            wordIteratorK.a(i2);
            if (wordIteratorK.f(i2)) {
                i3 = (!wordIteratorK.d(i2) || wordIteratorK.b(i2)) ? wordIteratorK.i(i2) : i2;
            } else {
                i3 = wordIteratorK.b(i2) ? wordIteratorK.i(i2) : -1;
            }
        }
        if (i3 == -1) {
            i3 = i2;
        }
        if (wordIteratorK.c(wordIteratorK.h(i2))) {
            wordIteratorK.a(i2);
            iH = i2;
            while (iH != -1 && (wordIteratorK.g(iH) || !wordIteratorK.c(iH))) {
                iH = wordIteratorK.h(iH);
            }
        } else {
            wordIteratorK.a(i2);
            if (wordIteratorK.b(i2)) {
                if (!wordIteratorK.d(i2) || wordIteratorK.f(i2)) {
                    iH2 = wordIteratorK.h(i2);
                    iH = iH2;
                } else {
                    iH = i2;
                }
            } else if (wordIteratorK.f(i2)) {
                iH2 = wordIteratorK.h(i2);
                iH = iH2;
            } else {
                iH = -1;
            }
        }
        if (iH != -1) {
            i2 = iH;
        }
        return TextRangeKt.a(i3, i2);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public final float f() {
        return this.d.e(0);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public final int g(long j2) {
        int iIntBitsToFloat = (int) Float.intBitsToFloat((int) (BodyPartID.bodyIdMax & j2));
        TextLayout textLayout = this.d;
        int lineForVertical = textLayout.g.getLineForVertical(iIntBitsToFloat - textLayout.f10615i);
        return textLayout.g.getOffsetForHorizontal(lineForVertical, (textLayout.c(lineForVertical) * (-1.0f)) + Float.intBitsToFloat((int) (j2 >> 32)));
    }

    @Override // androidx.compose.ui.text.Paragraph
    public final float getHeight() {
        return this.d.b();
    }

    @Override // androidx.compose.ui.text.Paragraph
    public final float getWidth() {
        return Constraints.h(this.f10415c);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public final int h(int i2) {
        return this.d.g.getLineStart(i2);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public final int i(int i2, boolean z) {
        TextLayout textLayout = this.d;
        if (!z) {
            return textLayout.g(i2);
        }
        Layout layout = textLayout.g;
        ThreadLocal threadLocal = TextLayout_androidKt.f10618a;
        if (layout.getEllipsisCount(i2) > 0 && textLayout.f10610b == TextUtils.TruncateAt.END) {
            return layout.getEllipsisStart(i2) + layout.getLineStart(i2);
        }
        LayoutHelper layoutHelperD = textLayout.d();
        Layout layout2 = layoutHelperD.f10582a;
        return layoutHelperD.f(layout2.getLineEnd(i2), layout2.getLineStart(i2));
    }

    @Override // androidx.compose.ui.text.Paragraph
    public final float j(int i2) {
        TextLayout textLayout = this.d;
        return textLayout.g.getLineRight(i2) + (i2 == textLayout.f10614h + (-1) ? textLayout.l : Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public final float k(int i2) {
        TextLayout textLayout = this.d;
        return textLayout.f(i2) - textLayout.h(i2);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public final int l(float f2) {
        TextLayout textLayout = this.d;
        return textLayout.g.getLineForVertical(((int) f2) - textLayout.f10615i);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public final AndroidPath m(int i2, int i3) {
        CharSequence charSequence = this.f10416e;
        if (i2 < 0 || i2 > i3 || i3 > charSequence.length()) {
            StringBuilder sbP = fc.p(i2, i3, "start(", ") or end(", ") is out of range [0..");
            sbP.append(charSequence.length());
            sbP.append("], or start > end!");
            InlineClassHelperKt.a(sbP.toString());
        }
        Path path = new Path();
        TextLayout textLayout = this.d;
        textLayout.g.getSelectionPath(i2, i3, path);
        int i4 = textLayout.f10615i;
        if (i4 != 0 && !path.isEmpty()) {
            path.offset(Call.Parameters.DEFAULT_CAMERA_ZOOM, i4);
        }
        return new AndroidPath(path);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public final float n(int i2, boolean z) {
        TextLayout textLayout = this.d;
        return z ? textLayout.i(i2, false) : textLayout.j(i2, false);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public final float o(int i2) {
        TextLayout textLayout = this.d;
        return textLayout.g.getLineLeft(i2) + (i2 == textLayout.f10614h + (-1) ? textLayout.f10617k : Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public final void p(Canvas canvas, Brush brush, float f2, Shadow shadow, TextDecoration textDecoration, DrawStyle drawStyle, int i2) {
        AndroidParagraphIntrinsics androidParagraphIntrinsics = this.f10413a;
        AndroidTextPaint androidTextPaint = androidParagraphIntrinsics.g;
        int i3 = androidTextPaint.f10889c;
        float width = getWidth();
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(getHeight())) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(width) << 32);
        Size.Companion companion = Size.f8820b;
        androidTextPaint.c(brush, jFloatToRawIntBits, f2);
        androidTextPaint.f(shadow);
        androidTextPaint.g(textDecoration);
        androidTextPaint.e(drawStyle);
        androidTextPaint.b(i2);
        z(canvas);
        androidParagraphIntrinsics.g.b(i3);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public final void q(long j2, float[] fArr, int i2) {
        this.d.a(TextRange.f(j2), TextRange.e(j2), i2, fArr);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public final float r() {
        TextLayout textLayout = this.d;
        return textLayout.e(textLayout.f10614h - 1);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public final int s(int i2) {
        return this.d.g.getLineForOffset(i2);
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00a3  */
    @Override // androidx.compose.ui.text.Paragraph
    public final long t(Rect rect, int i2, TextInclusionStrategy textInclusionStrategy) {
        int i3;
        int[] iArrA;
        RectF rectFB = RectHelper_androidKt.b(rect);
        TextGranularity.f10536a.getClass();
        int i4 = (i2 != 0 && i2 == TextGranularity.f10537b) ? 1 : 0;
        c cVar = new c(textInclusionStrategy, 5);
        TextLayout textLayout = this.d;
        Layout layout = textLayout.g;
        if (Build.VERSION.SDK_INT >= 34) {
            iArrA = AndroidLayoutApi34.a(textLayout, rectFB, i4, cVar);
        } else {
            LayoutHelper layoutHelperD = textLayout.d();
            SegmentFinder wordSegmentFinder = i4 == 1 ? new WordSegmentFinder(layout.getText(), textLayout.k()) : new GraphemeClusterSegmentFinderApi29(layout.getText(), textLayout.f10609a);
            int lineForVertical = layout.getLineForVertical((int) rectFB.top);
            if (rectFB.top <= textLayout.f(lineForVertical) || (lineForVertical = lineForVertical + 1) < textLayout.f10614h) {
                int i5 = lineForVertical;
                int lineForVertical2 = layout.getLineForVertical((int) rectFB.bottom);
                if (lineForVertical2 != 0 || rectFB.bottom >= textLayout.h(0)) {
                    int iB = TextLayoutGetRangeForRectExtensions_androidKt.b(textLayout, layout, layoutHelperD, i5, rectFB, wordSegmentFinder, cVar, true);
                    while (true) {
                        i3 = i5;
                        if (iB != -1 || i3 >= lineForVertical2) {
                            break;
                        }
                        i5 = i3 + 1;
                        iB = TextLayoutGetRangeForRectExtensions_androidKt.b(textLayout, layout, layoutHelperD, i5, rectFB, wordSegmentFinder, cVar, true);
                    }
                    if (iB == -1) {
                        iArrA = null;
                    } else {
                        int i6 = lineForVertical2;
                        int iB2 = TextLayoutGetRangeForRectExtensions_androidKt.b(textLayout, layout, layoutHelperD, i6, rectFB, wordSegmentFinder, cVar, false);
                        while (iB2 == -1 && i3 < i6) {
                            i6--;
                            iB2 = TextLayoutGetRangeForRectExtensions_androidKt.b(textLayout, layout, layoutHelperD, i6, rectFB, wordSegmentFinder, cVar, false);
                        }
                        if (iB2 == -1) {
                            iArrA = null;
                        } else {
                            iArrA = new int[]{wordSegmentFinder.b(iB + 1), wordSegmentFinder.c(iB2 - 1)};
                        }
                    }
                } else {
                    iArrA = null;
                }
            } else {
                iArrA = null;
            }
        }
        if (iArrA != null) {
            return TextRangeKt.a(iArrA[0], iArrA[1]);
        }
        TextRange.f10564b.getClass();
        return TextRange.f10565c;
    }

    @Override // androidx.compose.ui.text.Paragraph
    public final ResolvedTextDirection u(int i2) {
        return this.d.g.isRtlCharAt(i2) ? ResolvedTextDirection.Rtl : ResolvedTextDirection.Ltr;
    }

    @Override // androidx.compose.ui.text.Paragraph
    public final float v(int i2) {
        return this.d.f(i2);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public final Rect w(int i2) {
        float fJ;
        float fJ2;
        float fI;
        float fI2;
        CharSequence charSequence = this.f10416e;
        if (!(i2 >= 0 && i2 < charSequence.length())) {
            StringBuilder sbQ = fc.q(i2, "offset(", ") is out of bounds [0,");
            sbQ.append(charSequence.length());
            sbQ.append(')');
            InlineClassHelperKt.a(sbQ.toString());
        }
        TextLayout textLayout = this.d;
        Layout layout = textLayout.g;
        int lineForOffset = layout.getLineForOffset(i2);
        float fH = textLayout.h(lineForOffset);
        float f2 = textLayout.f(lineForOffset);
        boolean z = layout.getParagraphDirection(lineForOffset) == 1;
        boolean zIsRtlCharAt = layout.isRtlCharAt(i2);
        if (!z || zIsRtlCharAt) {
            if (z && zIsRtlCharAt) {
                fI = textLayout.j(i2, false);
                fI2 = textLayout.j(i2 + 1, true);
            } else if (zIsRtlCharAt) {
                fI = textLayout.i(i2, false);
                fI2 = textLayout.i(i2 + 1, true);
            } else {
                fJ = textLayout.j(i2, false);
                fJ2 = textLayout.j(i2 + 1, true);
            }
            float f3 = fI;
            fJ = fI2;
            fJ2 = f3;
        } else {
            fJ = textLayout.i(i2, false);
            fJ2 = textLayout.i(i2 + 1, true);
        }
        RectF rectF = new RectF(fJ, fH, fJ2, f2);
        return new Rect(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    @Override // androidx.compose.ui.text.Paragraph
    /* JADX INFO: renamed from: x, reason: from getter */
    public final List getF10417f() {
        return this.f10417f;
    }

    public final TextLayout y(int i2, int i3, TextUtils.TruncateAt truncateAt, int i4, int i5, int i6, int i7, int i8, CharSequence charSequence) {
        PlatformParagraphStyle platformParagraphStyle;
        float width = getWidth();
        AndroidParagraphIntrinsics androidParagraphIntrinsics = this.f10413a;
        AndroidTextPaint androidTextPaint = androidParagraphIntrinsics.g;
        int i9 = androidParagraphIntrinsics.l;
        LayoutIntrinsics layoutIntrinsics = androidParagraphIntrinsics.f10883i;
        TextStyle textStyle = androidParagraphIntrinsics.f10878b;
        AndroidParagraphHelper_androidKt$NoopSpan$1 androidParagraphHelper_androidKt$NoopSpan$1 = AndroidParagraphHelper_androidKt.f10876a;
        PlatformTextStyle platformTextStyle = textStyle.platformStyle;
        return new TextLayout(charSequence, width, androidTextPaint, i2, truncateAt, i9, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, (platformTextStyle == null || (platformParagraphStyle = platformTextStyle.f10503b) == null) ? false : platformParagraphStyle.f10498a, true, i4, i6, i7, i8, i5, i3, null, null, layoutIntrinsics, 196736, null);
    }

    public final void z(Canvas canvas) {
        android.graphics.Canvas canvasA = AndroidCanvas_androidKt.a(canvas);
        TextLayout textLayout = this.d;
        if (textLayout.f10612e) {
            canvasA.save();
            canvasA.clipRect(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, getWidth(), getHeight());
        }
        int i2 = textLayout.f10615i;
        if (canvasA.getClipBounds(textLayout.q)) {
            if (i2 != 0) {
                canvasA.translate(Call.Parameters.DEFAULT_CAMERA_ZOOM, i2);
            }
            ThreadLocal threadLocal = TextLayout_androidKt.f10618a;
            Object textAndroidCanvas = threadLocal.get();
            if (textAndroidCanvas == null) {
                textAndroidCanvas = new TextAndroidCanvas();
                threadLocal.set(textAndroidCanvas);
            }
            TextAndroidCanvas textAndroidCanvas2 = (TextAndroidCanvas) textAndroidCanvas;
            textAndroidCanvas2.f10608a = canvasA;
            try {
                textLayout.g.draw(textAndroidCanvas2);
                textAndroidCanvas2.f10608a = null;
                if (i2 != 0) {
                    canvasA.translate(Call.Parameters.DEFAULT_CAMERA_ZOOM, (-1.0f) * i2);
                }
            } catch (Throwable th) {
                textAndroidCanvas2.f10608a = null;
                throw th;
            }
        }
        if (textLayout.f10612e) {
            canvasA.restore();
        }
    }

    public AndroidParagraph(String str, TextStyle textStyle, List list, List list2, int i2, int i3, long j2, FontFamily.Resolver resolver, Density density, DefaultConstructorMarker defaultConstructorMarker) {
        this(new AndroidParagraphIntrinsics(str, textStyle, list, list2, resolver, density), i2, i3, j2, null);
    }
}
