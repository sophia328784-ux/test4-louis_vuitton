package com.google.firebase.messaging;

import defpackage.fc;
import defpackage.md;
import defpackage.tr;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
final class TopicOperation {
    public static final Pattern d = Pattern.compile("[a-zA-Z0-9-_.~%]{1,900}");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f35290a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f35291b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f35292c;

    public TopicOperation(String str, String str2) {
        String strSubstring = (str2 == null || !str2.startsWith("/topics/")) ? str2 : str2.substring(8);
        if (strSubstring == null || !d.matcher(strSubstring).matches()) {
            md.n(fc.h("Invalid topic name: ", strSubstring, " does not match the allowed format [a-zA-Z0-9-_.~%]{1,900}."));
            throw null;
        }
        this.f35290a = strSubstring;
        this.f35291b = str;
        this.f35292c = tr.h(str, "!", str2);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof TopicOperation)) {
            return false;
        }
        TopicOperation topicOperation = (TopicOperation) obj;
        return this.f35290a.equals(topicOperation.f35290a) && this.f35291b.equals(topicOperation.f35291b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f35291b, this.f35290a});
    }
}
