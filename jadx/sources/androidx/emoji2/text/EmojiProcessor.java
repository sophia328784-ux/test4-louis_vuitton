package androidx.emoji2.text;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.KeyEvent;
import androidx.emoji2.text.flatbuffer.MetadataItem;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class EmojiProcessor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EmojiCompat.SpanFactory f13084a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MetadataRepo f13085b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EmojiCompat.GlyphChecker f13086c;

    public static class EmojiProcessAddSpanCallback implements EmojiProcessCallback<UnprecomputeTextOnModificationSpannable> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public UnprecomputeTextOnModificationSpannable f13087a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final EmojiCompat.SpanFactory f13088b;

        public EmojiProcessAddSpanCallback(UnprecomputeTextOnModificationSpannable unprecomputeTextOnModificationSpannable, EmojiCompat.SpanFactory spanFactory) {
            this.f13087a = unprecomputeTextOnModificationSpannable;
            this.f13088b = spanFactory;
        }

        @Override // androidx.emoji2.text.EmojiProcessor.EmojiProcessCallback
        public final boolean a(CharSequence charSequence, int i2, int i3, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
            if ((typefaceEmojiRasterizer.f13120c & 4) > 0) {
                return true;
            }
            if (this.f13087a == null) {
                this.f13087a = new UnprecomputeTextOnModificationSpannable(charSequence instanceof Spannable ? (Spannable) charSequence : new SpannableString(charSequence));
            }
            this.f13087a.setSpan(this.f13088b.a(typefaceEmojiRasterizer), i2, i3, 33);
            return true;
        }

        @Override // androidx.emoji2.text.EmojiProcessor.EmojiProcessCallback
        public final Object getResult() {
            return this.f13087a;
        }
    }

    public interface EmojiProcessCallback<T> {
        boolean a(CharSequence charSequence, int i2, int i3, TypefaceEmojiRasterizer typefaceEmojiRasterizer);

        Object getResult();
    }

    public static class EmojiProcessLookupCallback implements EmojiProcessCallback<EmojiProcessLookupCallback> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f13089a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f13090b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f13091c = -1;

        public EmojiProcessLookupCallback(int i2) {
            this.f13089a = i2;
        }

        @Override // androidx.emoji2.text.EmojiProcessor.EmojiProcessCallback
        public final boolean a(CharSequence charSequence, int i2, int i3, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
            int i4 = this.f13089a;
            if (i2 > i4 || i4 >= i3) {
                return i3 <= i4;
            }
            this.f13090b = i2;
            this.f13091c = i3;
            return false;
        }

        @Override // androidx.emoji2.text.EmojiProcessor.EmojiProcessCallback
        public final Object getResult() {
            return this;
        }
    }

    public static class MarkExclusionCallback implements EmojiProcessCallback<MarkExclusionCallback> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f13092a;

        public MarkExclusionCallback(String str) {
            this.f13092a = str;
        }

        @Override // androidx.emoji2.text.EmojiProcessor.EmojiProcessCallback
        public final boolean a(CharSequence charSequence, int i2, int i3, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
            if (!TextUtils.equals(charSequence.subSequence(i2, i3), this.f13092a)) {
                return true;
            }
            typefaceEmojiRasterizer.f13120c = (typefaceEmojiRasterizer.f13120c & 3) | 4;
            return false;
        }

        @Override // androidx.emoji2.text.EmojiProcessor.EmojiProcessCallback
        public final Object getResult() {
            return this;
        }
    }

    public static final class ProcessorSm {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f13093a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MetadataRepo.Node f13094b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public MetadataRepo.Node f13095c;
        public MetadataRepo.Node d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f13096e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f13097f;

        public ProcessorSm(MetadataRepo.Node node) {
            this.f13094b = node;
            this.f13095c = node;
        }

        public final void a() {
            this.f13093a = 1;
            this.f13095c = this.f13094b;
            this.f13097f = 0;
        }

        public final boolean b() {
            MetadataItem metadataItemB = this.f13095c.f13113b.b();
            int iA = metadataItemB.a(6);
            return !(iA == 0 || metadataItemB.f13128b.get(iA + metadataItemB.f13127a) == 0) || this.f13096e == 65039;
        }
    }

    public EmojiProcessor(MetadataRepo metadataRepo, EmojiCompat.DefaultSpanFactory defaultSpanFactory, EmojiCompat.GlyphChecker glyphChecker, Set set) {
        this.f13084a = defaultSpanFactory;
        this.f13085b = metadataRepo;
        this.f13086c = glyphChecker;
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            int[] iArr = (int[]) it.next();
            String str = new String(iArr, 0, iArr.length);
            c(str, 0, str.length(), 1, true, new MarkExclusionCallback(str));
        }
    }

    public static boolean a(Editable editable, KeyEvent keyEvent, boolean z) {
        EmojiSpan[] emojiSpanArr;
        if (KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState())) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (selectionStart != -1 && selectionEnd != -1 && selectionStart == selectionEnd && (emojiSpanArr = (EmojiSpan[]) editable.getSpans(selectionStart, selectionEnd, EmojiSpan.class)) != null && emojiSpanArr.length > 0) {
                for (EmojiSpan emojiSpan : emojiSpanArr) {
                    int spanStart = editable.getSpanStart(emojiSpan);
                    int spanEnd = editable.getSpanEnd(emojiSpan);
                    if ((z && spanStart == selectionStart) || ((!z && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                        editable.delete(spanStart, spanEnd);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean b(CharSequence charSequence, int i2, int i3, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
        if ((typefaceEmojiRasterizer.f13120c & 3) == 0) {
            EmojiCompat.GlyphChecker glyphChecker = this.f13086c;
            MetadataItem metadataItemB = typefaceEmojiRasterizer.b();
            int iA = metadataItemB.a(8);
            if (iA != 0) {
                metadataItemB.f13128b.getShort(iA + metadataItemB.f13127a);
            }
            boolean zA = glyphChecker.a(charSequence, i2, i3);
            int i4 = typefaceEmojiRasterizer.f13120c & 4;
            typefaceEmojiRasterizer.f13120c = zA ? i4 | 2 : i4 | 1;
        }
        return (typefaceEmojiRasterizer.f13120c & 3) == 2;
    }

    public final Object c(CharSequence charSequence, int i2, int i3, int i4, boolean z, EmojiProcessCallback emojiProcessCallback) {
        int i5;
        char c2;
        ProcessorSm processorSm = new ProcessorSm(this.f13085b.f13111c);
        int iCodePointAt = Character.codePointAt(charSequence, i2);
        int i6 = 0;
        boolean zA = true;
        int iCharCount = i2;
        loop0: while (true) {
            i5 = iCharCount;
            while (true) {
                if (iCharCount < i3 && i6 < i4 && zA) {
                    SparseArray sparseArray = processorSm.f13095c.f13112a;
                    MetadataRepo.Node node = sparseArray == null ? null : (MetadataRepo.Node) sparseArray.get(iCodePointAt);
                    if (processorSm.f13093a == 2) {
                        if (node != null) {
                            processorSm.f13095c = node;
                            processorSm.f13097f++;
                        } else {
                            if (iCodePointAt == 65038) {
                                processorSm.a();
                            } else if (iCodePointAt != 65039) {
                                MetadataRepo.Node node2 = processorSm.f13095c;
                                if (node2.f13113b != null) {
                                    if (processorSm.f13097f != 1) {
                                        processorSm.d = node2;
                                        processorSm.a();
                                    } else if (processorSm.b()) {
                                        processorSm.d = processorSm.f13095c;
                                        processorSm.a();
                                    } else {
                                        processorSm.a();
                                    }
                                    c2 = 3;
                                } else {
                                    processorSm.a();
                                }
                            }
                            c2 = 1;
                        }
                        c2 = 2;
                    } else if (node == null) {
                        processorSm.a();
                        c2 = 1;
                    } else {
                        processorSm.f13093a = 2;
                        processorSm.f13095c = node;
                        processorSm.f13097f = 1;
                        c2 = 2;
                    }
                    processorSm.f13096e = iCodePointAt;
                    if (c2 == 1) {
                        iCharCount = Character.charCount(Character.codePointAt(charSequence, i5)) + i5;
                        if (iCharCount >= i3) {
                            break;
                        }
                        iCodePointAt = Character.codePointAt(charSequence, iCharCount);
                        break;
                    }
                    if (c2 == 2) {
                        int iCharCount2 = Character.charCount(iCodePointAt) + iCharCount;
                        if (iCharCount2 < i3) {
                            iCodePointAt = Character.codePointAt(charSequence, iCharCount2);
                        }
                        iCharCount = iCharCount2;
                    } else if (c2 == 3) {
                        if (!z && b(charSequence, i5, iCharCount, processorSm.d.f13113b)) {
                            break;
                        }
                        zA = emojiProcessCallback.a(charSequence, i5, iCharCount, processorSm.d.f13113b);
                        i6++;
                        break;
                    }
                } else {
                    break loop0;
                }
            }
        }
        if (processorSm.f13093a == 2 && processorSm.f13095c.f13113b != null && ((processorSm.f13097f > 1 || processorSm.b()) && i6 < i4 && zA && (z || !b(charSequence, i5, iCharCount, processorSm.f13095c.f13113b)))) {
            emojiProcessCallback.a(charSequence, i5, iCharCount, processorSm.f13095c.f13113b);
        }
        return emojiProcessCallback.getResult();
    }
}
