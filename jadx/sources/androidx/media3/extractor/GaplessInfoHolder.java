package androidx.media3.extractor;

import androidx.media3.common.Metadata;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.metadata.id3.CommentFrame;
import androidx.media3.extractor.metadata.id3.InternalFrame;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableListIterator;
import defpackage.us;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class GaplessInfoHolder {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f16164c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f16165a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f16166b = -1;

    public final boolean a(String str) {
        Matcher matcher = f16164c.matcher(str);
        if (!matcher.find()) {
            return false;
        }
        try {
            String strGroup = matcher.group(1);
            String str2 = Util.f14242a;
            int i2 = Integer.parseInt(strGroup, 16);
            int i3 = Integer.parseInt(matcher.group(2), 16);
            if (i2 <= 0 && i3 <= 0) {
                return false;
            }
            this.f16165a = i2;
            this.f16166b = i3;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0087  */
    /* JADX WARN: Multi-variable type inference failed */
    public final void b(Metadata metadata) {
        Metadata.Entry entry;
        metadata.getClass();
        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        Metadata.Entry[] entryArr = metadata.f13897a;
        int length = entryArr.length;
        int i2 = 0;
        while (true) {
            Metadata.Entry entry2 = null;
            if (i2 >= length) {
                break;
            }
            Metadata.Entry entry3 = entryArr[i2];
            if (CommentFrame.class.isAssignableFrom(entry3.getClass())) {
                Metadata.Entry entry4 = (Metadata.Entry) CommentFrame.class.cast(entry3);
                if (((CommentFrame) entry4).f16375c.equals("iTunSMPB")) {
                    entry2 = entry4;
                }
            }
            if (entry2 != null) {
                builder.e(entry2);
            }
            i2++;
        }
        UnmodifiableListIterator unmodifiableListIteratorListIterator = builder.j().listIterator(0);
        while (unmodifiableListIteratorListIterator.hasNext()) {
            if (a(((CommentFrame) unmodifiableListIteratorListIterator.next()).d)) {
                return;
            }
        }
        us usVar = new us(2);
        UnmodifiableListIterator unmodifiableListIterator2 = ImmutableList.f33587c;
        ImmutableList.Builder builder2 = new ImmutableList.Builder();
        for (Metadata.Entry entry5 : metadata.f13897a) {
            if (InternalFrame.class.isAssignableFrom(entry5.getClass())) {
                entry = (Metadata.Entry) InternalFrame.class.cast(entry5);
                if (!usVar.apply(entry)) {
                    entry = null;
                }
            } else {
                entry = null;
            }
            if (entry != null) {
                builder2.e(entry);
            }
        }
        UnmodifiableListIterator unmodifiableListIteratorListIterator2 = builder2.j().listIterator(0);
        while (unmodifiableListIteratorListIterator2.hasNext() && !a(((InternalFrame) unmodifiableListIteratorListIterator2.next()).d)) {
        }
    }
}
