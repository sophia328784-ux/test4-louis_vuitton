package androidx.emoji2.text;

import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import androidx.collection.ArraySet;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.flatbuffer.MetadataList;
import defpackage.md;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes.dex */
public class EmojiCompat {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Object f13064j = new Object();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static volatile EmojiCompat f13065k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ReentrantReadWriteLock f13066a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArraySet f13067b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile int f13068c;
    public final Handler d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CompatInternal19 f13069e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MetadataRepoLoader f13070f;
    public final DefaultSpanFactory g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f13071h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final GlyphChecker f13072i;

    @Retention(RetentionPolicy.SOURCE)
    public @interface CodepointSequenceMatchResult {
    }

    public static class CompatInternal {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final EmojiCompat f13073a;

        public CompatInternal(EmojiCompat emojiCompat) {
            this.f13073a = emojiCompat;
        }
    }

    public static final class CompatInternal19 extends CompatInternal {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public volatile EmojiProcessor f13074b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public volatile MetadataRepo f13075c;

        /* JADX INFO: renamed from: androidx.emoji2.text.EmojiCompat$CompatInternal19$1, reason: invalid class name */
        class AnonymousClass1 extends MetadataRepoLoaderCallback {
            public AnonymousClass1() {
            }

            @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoaderCallback
            public final void a(Throwable th) {
                CompatInternal19.this.f13073a.i(th);
            }

            @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoaderCallback
            public final void b(MetadataRepo metadataRepo) {
                CompatInternal19 compatInternal19 = CompatInternal19.this;
                compatInternal19.f13075c = metadataRepo;
                MetadataRepo metadataRepo2 = compatInternal19.f13075c;
                EmojiCompat emojiCompat = compatInternal19.f13073a;
                compatInternal19.f13074b = new EmojiProcessor(metadataRepo2, emojiCompat.g, emojiCompat.f13072i, Build.VERSION.SDK_INT >= 34 ? EmojiExclusions$EmojiExclusions_Api34.a() : EmojiExclusions$EmojiExclusions_Reflections.a());
                EmojiCompat emojiCompat2 = compatInternal19.f13073a;
                ArrayList arrayList = new ArrayList();
                emojiCompat2.f13066a.writeLock().lock();
                try {
                    emojiCompat2.f13068c = 1;
                    arrayList.addAll(emojiCompat2.f13067b);
                    emojiCompat2.f13067b.clear();
                    emojiCompat2.f13066a.writeLock().unlock();
                    emojiCompat2.d.post(new ListenerDispatcher(arrayList, emojiCompat2.f13068c));
                } catch (Throwable th) {
                    emojiCompat2.f13066a.writeLock().unlock();
                    throw th;
                }
            }
        }
    }

    public static abstract class Config {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MetadataRepoLoader f13077a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f13078b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final GlyphChecker f13079c = new DefaultGlyphChecker();

        public Config(MetadataRepoLoader metadataRepoLoader) {
            this.f13077a = metadataRepoLoader;
        }
    }

    public static class DefaultSpanFactory implements SpanFactory {
        @Override // androidx.emoji2.text.EmojiCompat.SpanFactory
        public final TypefaceEmojiSpan a(TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
            return new TypefaceEmojiSpan(typefaceEmojiRasterizer);
        }
    }

    public interface GlyphChecker {
        boolean a(CharSequence charSequence, int i2, int i3);
    }

    public static abstract class InitCallback {
        public void onFailed(Throwable th) {
        }

        public void onInitialized() {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface LoadStrategy {
    }

    public interface MetadataRepoLoader {
        void a(MetadataRepoLoaderCallback metadataRepoLoaderCallback);
    }

    public static abstract class MetadataRepoLoaderCallback {
        public abstract void a(Throwable th);

        public abstract void b(MetadataRepo metadataRepo);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ReplaceStrategy {
    }

    public interface SpanFactory {
        TypefaceEmojiSpan a(TypefaceEmojiRasterizer typefaceEmojiRasterizer);
    }

    public EmojiCompat(Config config) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f13066a = reentrantReadWriteLock;
        this.f13068c = 3;
        MetadataRepoLoader metadataRepoLoader = config.f13077a;
        this.f13070f = metadataRepoLoader;
        int i2 = config.f13078b;
        this.f13071h = i2;
        this.f13072i = config.f13079c;
        this.d = new Handler(Looper.getMainLooper());
        this.f13067b = new ArraySet();
        this.g = new DefaultSpanFactory();
        CompatInternal19 compatInternal19 = new CompatInternal19(this);
        this.f13069e = compatInternal19;
        reentrantReadWriteLock.writeLock().lock();
        if (i2 == 0) {
            try {
                this.f13068c = 0;
            } catch (Throwable th) {
                this.f13066a.writeLock().unlock();
                throw th;
            }
        }
        reentrantReadWriteLock.writeLock().unlock();
        if (d() == 0) {
            try {
                metadataRepoLoader.a(compatInternal19.new AnonymousClass1());
            } catch (Throwable th2) {
                i(th2);
            }
        }
    }

    public static EmojiCompat a() {
        EmojiCompat emojiCompat;
        synchronized (f13064j) {
            emojiCompat = f13065k;
            Preconditions.f("EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK's manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message.", emojiCompat != null);
        }
        return emojiCompat;
    }

    public static boolean e(InputConnection inputConnection, Editable editable, int i2, int i3, boolean z) {
        int iMin;
        if (editable != null && i2 >= 0 && i3 >= 0) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (selectionStart != -1 && selectionEnd != -1 && selectionStart == selectionEnd) {
                if (z) {
                    int iMax = Math.max(i2, 0);
                    int length = editable.length();
                    if (selectionStart >= 0 && length >= selectionStart && iMax >= 0) {
                        loop0: while (true) {
                            boolean z2 = false;
                            while (true) {
                                if (iMax == 0) {
                                    break loop0;
                                }
                                selectionStart--;
                                if (selectionStart < 0) {
                                    if (!z2) {
                                        selectionStart = 0;
                                        break loop0;
                                    }
                                    break loop0;
                                }
                                char cCharAt = editable.charAt(selectionStart);
                                if (z2) {
                                    if (Character.isHighSurrogate(cCharAt)) {
                                        iMax--;
                                    }
                                } else if (!Character.isSurrogate(cCharAt)) {
                                    iMax--;
                                } else if (!Character.isHighSurrogate(cCharAt)) {
                                    z2 = true;
                                }
                                selectionStart = -1;
                                break loop0;
                            }
                        }
                    }
                    selectionStart = -1;
                    break loop0;
                    int iMax2 = Math.max(i3, 0);
                    iMin = editable.length();
                    if (selectionEnd >= 0 && iMin >= selectionEnd && iMax2 >= 0) {
                        loop2: while (true) {
                            boolean z3 = false;
                            while (true) {
                                if (iMax2 != 0) {
                                    if (selectionEnd >= iMin) {
                                        if (!z3) {
                                            break loop2;
                                        }
                                        break loop2;
                                    }
                                    char cCharAt2 = editable.charAt(selectionEnd);
                                    if (z3) {
                                        if (Character.isLowSurrogate(cCharAt2)) {
                                            iMax2--;
                                            selectionEnd++;
                                        }
                                    } else if (!Character.isSurrogate(cCharAt2)) {
                                        iMax2--;
                                        selectionEnd++;
                                    } else if (!Character.isLowSurrogate(cCharAt2)) {
                                        selectionEnd++;
                                        z3 = true;
                                    }
                                    iMin = -1;
                                    break loop2;
                                }
                                iMin = selectionEnd;
                                break loop2;
                            }
                        }
                    }
                    iMin = -1;
                    break loop2;
                    if (selectionStart != -1 && iMin != -1) {
                    }
                } else {
                    selectionStart = Math.max(selectionStart - i2, 0);
                    iMin = Math.min(selectionEnd + i3, editable.length());
                }
                EmojiSpan[] emojiSpanArr = (EmojiSpan[]) editable.getSpans(selectionStart, iMin, EmojiSpan.class);
                if (emojiSpanArr != null && emojiSpanArr.length > 0) {
                    for (EmojiSpan emojiSpan : emojiSpanArr) {
                        int spanStart = editable.getSpanStart(emojiSpan);
                        int spanEnd = editable.getSpanEnd(emojiSpan);
                        selectionStart = Math.min(spanStart, selectionStart);
                        iMin = Math.max(spanEnd, iMin);
                    }
                    int iMax3 = Math.max(selectionStart, 0);
                    int iMin2 = Math.min(iMin, editable.length());
                    InputConnectionWrapper inputConnectionWrapper = (InputConnectionWrapper) inputConnection;
                    inputConnectionWrapper.beginBatchEdit();
                    editable.delete(iMax3, iMin2);
                    inputConnectionWrapper.endBatchEdit();
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean f(Editable editable, int i2, KeyEvent keyEvent) {
        boolean zA;
        if (i2 != 67) {
            zA = i2 != 112 ? false : EmojiProcessor.a(editable, keyEvent, true);
        } else {
            zA = EmojiProcessor.a(editable, keyEvent, false);
        }
        if (!zA) {
            return false;
        }
        MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
        return true;
    }

    public static boolean g() {
        return f13065k != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int b(int i2, String str) {
        Preconditions.f("Not initialized yet", d() == 1);
        Preconditions.e(str, "charSequence cannot be null");
        EmojiProcessor emojiProcessor = this.f13069e.f13074b;
        emojiProcessor.getClass();
        if (i2 < 0 || i2 >= str.length()) {
            return -1;
        }
        if (str instanceof Spanned) {
            Spanned spanned = (Spanned) str;
            EmojiSpan[] emojiSpanArr = (EmojiSpan[]) spanned.getSpans(i2, i2 + 1, EmojiSpan.class);
            if (emojiSpanArr.length > 0) {
                return spanned.getSpanEnd(emojiSpanArr[0]);
            }
        }
        return ((EmojiProcessor.EmojiProcessLookupCallback) emojiProcessor.c(str, Math.max(0, i2 - 16), Math.min(str.length(), i2 + 16), Integer.MAX_VALUE, true, new EmojiProcessor.EmojiProcessLookupCallback(i2))).f13091c;
    }

    public final int c(CharSequence charSequence, int i2) {
        Preconditions.f("Not initialized yet", d() == 1);
        Preconditions.e(charSequence, "charSequence cannot be null");
        EmojiProcessor emojiProcessor = this.f13069e.f13074b;
        emojiProcessor.getClass();
        if (i2 < 0 || i2 >= charSequence.length()) {
            return -1;
        }
        if (charSequence instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence;
            EmojiSpan[] emojiSpanArr = (EmojiSpan[]) spanned.getSpans(i2, i2 + 1, EmojiSpan.class);
            if (emojiSpanArr.length > 0) {
                return spanned.getSpanStart(emojiSpanArr[0]);
            }
        }
        return ((EmojiProcessor.EmojiProcessLookupCallback) emojiProcessor.c(charSequence, Math.max(0, i2 - 16), Math.min(charSequence.length(), i2 + 16), Integer.MAX_VALUE, true, new EmojiProcessor.EmojiProcessLookupCallback(i2))).f13090b;
    }

    public final int d() {
        this.f13066a.readLock().lock();
        try {
            return this.f13068c;
        } finally {
            this.f13066a.readLock().unlock();
        }
    }

    public final void h() {
        Preconditions.f("Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading", this.f13071h == 1);
        if (d() == 1) {
            return;
        }
        this.f13066a.writeLock().lock();
        try {
            if (this.f13068c == 0) {
                this.f13066a.writeLock().unlock();
                return;
            }
            this.f13068c = 0;
            this.f13066a.writeLock().unlock();
            CompatInternal19 compatInternal19 = this.f13069e;
            EmojiCompat emojiCompat = compatInternal19.f13073a;
            try {
                emojiCompat.f13070f.a(compatInternal19.new AnonymousClass1());
            } catch (Throwable th) {
                emojiCompat.i(th);
            }
        } catch (Throwable th2) {
            this.f13066a.writeLock().unlock();
            throw th2;
        }
    }

    public final void i(Throwable th) {
        ArrayList arrayList = new ArrayList();
        this.f13066a.writeLock().lock();
        try {
            this.f13068c = 2;
            arrayList.addAll(this.f13067b);
            this.f13067b.clear();
            this.f13066a.writeLock().unlock();
            this.d.post(new ListenerDispatcher(arrayList, this.f13068c, th));
        } catch (Throwable th2) {
            this.f13066a.writeLock().unlock();
            throw th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:55:0x00a8 A[Catch: all -> 0x008b, TryCatch #1 {all -> 0x008b, blocks: (B:35:0x0063, B:38:0x0068, B:40:0x006c, B:42:0x0079, B:49:0x0098, B:51:0x00a2, B:53:0x00a5, B:55:0x00a8, B:57:0x00b8, B:58:0x00bb), top: B:92:0x0063 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00b8 A[Catch: all -> 0x008b, TryCatch #1 {all -> 0x008b, blocks: (B:35:0x0063, B:38:0x0068, B:40:0x006c, B:42:0x0079, B:49:0x0098, B:51:0x00a2, B:53:0x00a5, B:55:0x00a8, B:57:0x00b8, B:58:0x00bb), top: B:92:0x0063 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:83:0x0104  */
    /* JADX WARN: Code duplicated, block: B:97:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:99:? A[RETURN, SYNTHETIC] */
    public final CharSequence j(int i2, int i3, int i4, CharSequence charSequence) throws Throwable {
        Throwable th;
        CharSequence charSequence2;
        int i5;
        int i6;
        EmojiSpan[] emojiSpanArr;
        int spanStart;
        Preconditions.f("Not initialized yet", d() == 1);
        UnprecomputeTextOnModificationSpannable unprecomputeTextOnModificationSpannable = null;
        if (i2 < 0) {
            md.n("start cannot be negative");
            return null;
        }
        if (i3 < 0) {
            md.n("end cannot be negative");
            return null;
        }
        Preconditions.b(i2 <= i3, "start should be <= than end");
        if (charSequence == null) {
            return null;
        }
        Preconditions.b(i2 <= charSequence.length(), "start should be < than charSequence length");
        Preconditions.b(i3 <= charSequence.length(), "end should be < than charSequence length");
        if (charSequence.length() == 0 || i2 == i3) {
            return charSequence;
        }
        boolean z = i4 == 1;
        EmojiProcessor emojiProcessor = this.f13069e.f13074b;
        emojiProcessor.getClass();
        boolean z2 = charSequence instanceof SpannableBuilder;
        if (z2) {
            ((SpannableBuilder) charSequence).a();
        }
        if (z2) {
            unprecomputeTextOnModificationSpannable = new UnprecomputeTextOnModificationSpannable((Spannable) charSequence);
            if (unprecomputeTextOnModificationSpannable != null) {
                for (EmojiSpan emojiSpan : emojiSpanArr) {
                    spanStart = unprecomputeTextOnModificationSpannable.f13123c.getSpanStart(emojiSpan);
                    int spanEnd = unprecomputeTextOnModificationSpannable.f13123c.getSpanEnd(emojiSpan);
                    if (spanStart != i3) {
                        unprecomputeTextOnModificationSpannable.removeSpan(emojiSpan);
                    }
                    i2 = Math.min(spanStart, i2);
                    i3 = Math.max(spanEnd, i3);
                }
            }
            i5 = i2;
            i6 = i3;
            if (i5 != i6) {
                charSequence2 = charSequence;
                if (!z2) {
                    return charSequence2;
                }
            } else {
                charSequence2 = charSequence;
                if (!z2) {
                    return charSequence2;
                }
            }
            ((SpannableBuilder) charSequence2).b();
            return charSequence2;
        }
        try {
            if (charSequence instanceof Spannable) {
                try {
                    unprecomputeTextOnModificationSpannable = new UnprecomputeTextOnModificationSpannable((Spannable) charSequence);
                } catch (Throwable th2) {
                    th = th2;
                    charSequence2 = charSequence;
                    th = th;
                    if (!z2) {
                        throw th;
                    }
                    ((SpannableBuilder) charSequence2).b();
                    throw th;
                }
            } else if ((charSequence instanceof Spanned) && ((Spanned) charSequence).nextSpanTransition(i2 - 1, i3 + 1, EmojiSpan.class) <= i3) {
                unprecomputeTextOnModificationSpannable = new UnprecomputeTextOnModificationSpannable();
                unprecomputeTextOnModificationSpannable.f13122b = false;
                unprecomputeTextOnModificationSpannable.f13123c = new SpannableString(charSequence);
            }
            if (unprecomputeTextOnModificationSpannable != null && (emojiSpanArr = (EmojiSpan[]) unprecomputeTextOnModificationSpannable.f13123c.getSpans(i2, i3, EmojiSpan.class)) != null && emojiSpanArr.length > 0) {
                while (i < r2) {
                    spanStart = unprecomputeTextOnModificationSpannable.f13123c.getSpanStart(emojiSpan);
                    int spanEnd2 = unprecomputeTextOnModificationSpannable.f13123c.getSpanEnd(emojiSpan);
                    if (spanStart != i3) {
                        unprecomputeTextOnModificationSpannable.removeSpan(emojiSpan);
                    }
                    i2 = Math.min(spanStart, i2);
                    i3 = Math.max(spanEnd2, i3);
                }
            }
            i5 = i2;
            i6 = i3;
            if (i5 != i6 || i5 >= charSequence.length()) {
                charSequence2 = charSequence;
                if (!z2) {
                    return charSequence2;
                }
            } else {
                charSequence2 = charSequence;
                try {
                    UnprecomputeTextOnModificationSpannable unprecomputeTextOnModificationSpannable2 = (UnprecomputeTextOnModificationSpannable) emojiProcessor.c(charSequence2, i5, i6, Integer.MAX_VALUE, z, new EmojiProcessor.EmojiProcessAddSpanCallback(unprecomputeTextOnModificationSpannable, emojiProcessor.f13084a));
                    if (unprecomputeTextOnModificationSpannable2 != null) {
                        Spannable spannable = unprecomputeTextOnModificationSpannable2.f13123c;
                        if (z2) {
                            ((SpannableBuilder) charSequence2).b();
                        }
                        return spannable;
                    }
                    if (!z2) {
                        return charSequence2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    th = th;
                    if (!z2) {
                        throw th;
                    }
                    ((SpannableBuilder) charSequence2).b();
                    throw th;
                }
            }
            ((SpannableBuilder) charSequence2).b();
            return charSequence2;
        } catch (Throwable th4) {
            th = th4;
            charSequence2 = charSequence;
        }
        if (!z2) {
            throw th;
        }
        ((SpannableBuilder) charSequence2).b();
        throw th;
    }

    public final void k(InitCallback initCallback) {
        Preconditions.e(initCallback, "initCallback cannot be null");
        this.f13066a.writeLock().lock();
        try {
            if (this.f13068c == 1 || this.f13068c == 2) {
                this.d.post(new ListenerDispatcher(initCallback, this.f13068c));
            } else {
                this.f13067b.add(initCallback);
            }
        } finally {
            this.f13066a.writeLock().unlock();
        }
    }

    public final void l(EditorInfo editorInfo) {
        if (d() != 1 || editorInfo == null) {
            return;
        }
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        CompatInternal19 compatInternal19 = this.f13069e;
        compatInternal19.getClass();
        Bundle bundle = editorInfo.extras;
        MetadataList metadataList = compatInternal19.f13075c.f13109a;
        int iA = metadataList.a(4);
        bundle.putInt("android.support.text.emoji.emojiCompat_metadataVersion", iA != 0 ? metadataList.f13128b.getInt(iA + metadataList.f13127a) : 0);
        editorInfo.extras.putBoolean("android.support.text.emoji.emojiCompat_replaceAll", false);
    }

    public static class ListenerDispatcher implements Runnable {
        private final List<InitCallback> mInitCallbacks;
        private final int mLoadState;
        private final Throwable mThrowable;

        public ListenerDispatcher(Collection<InitCallback> collection, int i2, Throwable th) {
            Preconditions.e(collection, "initCallbacks cannot be null");
            this.mInitCallbacks = new ArrayList(collection);
            this.mLoadState = i2;
            this.mThrowable = th;
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.mInitCallbacks.size();
            int i2 = 0;
            if (this.mLoadState != 1) {
                while (i2 < size) {
                    this.mInitCallbacks.get(i2).onFailed(this.mThrowable);
                    i2++;
                }
            } else {
                while (i2 < size) {
                    this.mInitCallbacks.get(i2).onInitialized();
                    i2++;
                }
            }
        }

        public ListenerDispatcher(Collection<InitCallback> collection, int i2) {
            this(collection, i2, null);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public ListenerDispatcher(InitCallback initCallback, int i2) {
            this(Arrays.asList(initCallback), i2, null);
            Preconditions.e(initCallback, "initCallback cannot be null");
        }
    }
}
