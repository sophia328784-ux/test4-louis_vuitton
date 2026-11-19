package com.batch.android;

import android.content.Context;
import com.batch.android.e.t;
import com.batch.android.n.f0;
import com.batch.android.n.x;
import com.batch.android.n.z;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class BatchProfileAttributeEditor extends com.batch.android.l1.b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f22831h = "BatchProfileAttributeEditor";
    private final com.batch.android.c1.e g = new com.batch.android.c1.e();

    public BatchProfileAttributeEditor addToArray(String str, List<String> list) {
        try {
            String strH = com.batch.android.c1.a.h(str);
            if (com.batch.android.c1.a.a(list)) {
                t.a(f22831h, "Array of string attributes must not be longer than 25 items, only values of type String and must respect the string attribute limitations. Ignoring attribute '" + str + "'");
                return this;
            }
            this.g.a(strH, new ArrayList(list));
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                super.a(str, it.next());
            }
            return this;
        } catch (com.batch.android.c1.a.b e2) {
            e2.a(f22831h, str);
            return this;
        }
    }

    @Override // com.batch.android.l1.b
    public BatchProfileAttributeEditor removeAttribute(String str) {
        try {
            this.g.a(com.batch.android.c1.a.h(str));
            super.removeAttribute(str);
            super.a(str);
            return this;
        } catch (com.batch.android.c1.a.b e2) {
            e2.a(f22831h, str);
            return this;
        }
    }

    public BatchProfileAttributeEditor removeFromArray(String str, List<String> list) {
        try {
            String strH = com.batch.android.c1.a.h(str);
            if (com.batch.android.c1.a.a(list)) {
                t.a(f22831h, "Array of string attributes must not be longer than 25 items, only values of type String and must respect the string attribute limitations. Ignoring attribute '" + str + "'");
                return this;
            }
            this.g.b(strH, new ArrayList(list));
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                super.b(str, it.next());
            }
            return this;
        } catch (com.batch.android.c1.a.b e2) {
            e2.a(f22831h, str);
            return this;
        }
    }

    @Override // com.batch.android.l1.b
    public void save() {
        super.save();
        x.a().a(this.g);
    }

    @Override // com.batch.android.l1.b
    public BatchProfileAttributeEditor setAttribute(String str, URI uri) {
        try {
            com.batch.android.c1.a.a((Object) uri);
            String strH = com.batch.android.c1.a.h(str);
            if (com.batch.android.c1.a.b(uri)) {
                t.a(f22831h, "URL attributes can't be null or longer than 2048 characters. Ignoring attribute '" + str + "'");
                return this;
            }
            if (!com.batch.android.c1.a.a(uri)) {
                this.g.a(strH, new com.batch.android.l1.d(uri.toString(), com.batch.android.l1.a.URL));
                super.setAttribute(str, uri);
                return this;
            }
            t.a(f22831h, "URL attributes must follow the format 'scheme://[authority][path][?query][#fragment]'. Ignoring attribute '" + str + "'");
            return this;
        } catch (com.batch.android.c1.a.b e2) {
            e2.a(f22831h, str);
            return this;
        }
    }

    public BatchProfileAttributeEditor setEmailAddress(String str) {
        Context contextC = z.a().c();
        if (contextC == null) {
            t.a(f22831h, "Batch does not have a context yet. Make sure Batch is started beforehand.");
            return this;
        }
        if (f0.a().b(contextC) == null) {
            t.a(f22831h, "You cannot set/reset an email to an anonymous profile. Please use the `Batch.Profile.identify` method beforehand.");
            return this;
        }
        if (com.batch.android.c1.a.c(str)) {
            t.a(f22831h, "setEmail called with invalid email format. Please ensure to respect the following regex: .@.\\..* and 128 char max length. ");
            return this;
        }
        this.g.b(str);
        return this;
    }

    public BatchProfileAttributeEditor setEmailMarketingSubscription(BatchEmailSubscriptionState batchEmailSubscriptionState) {
        this.g.a(batchEmailSubscriptionState);
        return this;
    }

    @Override // com.batch.android.l1.b
    public BatchProfileAttributeEditor setLanguage(String str) {
        if (com.batch.android.c1.a.d(str)) {
            t.a(f22831h, "setLanguage called with invalid language (must be at least 2 chars)");
            return this;
        }
        this.g.c(str);
        super.setLanguage(str);
        return this;
    }

    public BatchProfileAttributeEditor setPhoneNumber(String str) {
        Context contextC = z.a().c();
        if (contextC == null) {
            t.a(f22831h, "Batch does not have a context yet. Make sure Batch is started beforehand.");
            return this;
        }
        if (f0.a().b(contextC) == null) {
            t.a(f22831h, "You cannot set/reset a phone number to an anonymous profile. Please use the `Batch.Profile.identify` method beforehand.");
            return this;
        }
        if (com.batch.android.c1.a.e(str)) {
            t.a(f22831h, "setPhoneNumber called with invalid phone number format. Please make sure that the string starts with a `+` and is no longer than 15 digits.");
            return this;
        }
        this.g.d(str);
        return this;
    }

    @Override // com.batch.android.l1.b
    public BatchProfileAttributeEditor setRegion(String str) {
        if (com.batch.android.c1.a.f(str)) {
            t.a(f22831h, "setRegion called with invalid region (must be at least 2 chars)");
            return this;
        }
        this.g.e(str);
        super.setRegion(str);
        return this;
    }

    public BatchProfileAttributeEditor setSMSMarketingSubscription(BatchSMSSubscriptionState batchSMSSubscriptionState) {
        this.g.a(batchSMSSubscriptionState);
        return this;
    }

    public BatchProfileAttributeEditor addToArray(String str, String str2) {
        try {
            String strH = com.batch.android.c1.a.h(str);
            if (com.batch.android.c1.a.g(str2)) {
                t.a(f22831h, "Strings in Array attributes can't be null or longer than 64 characters. Ignoring attribute '" + str + "'");
                return this;
            }
            this.g.a(strH, new ArrayList(Collections.singletonList(str2)));
            super.a(str, str2);
            return this;
        } catch (com.batch.android.c1.a.b e2) {
            e2.a(f22831h, str);
            return this;
        }
    }

    public BatchProfileAttributeEditor removeFromArray(String str, String str2) {
        try {
            String strH = com.batch.android.c1.a.h(str);
            if (com.batch.android.c1.a.g(str2)) {
                t.a(f22831h, "Strings in Array attributes can't be null or longer than 64 characters. Ignoring attribute '" + str + "'");
                return this;
            }
            this.g.b(strH, new ArrayList(Collections.singletonList(str2)));
            super.b(str, str2);
            return this;
        } catch (com.batch.android.c1.a.b e2) {
            e2.a(f22831h, str);
            return this;
        }
    }

    @Override // com.batch.android.l1.b
    public BatchProfileAttributeEditor setAttribute(String str, long j2) {
        try {
            this.g.a(com.batch.android.c1.a.h(str), new com.batch.android.l1.d(Long.valueOf(j2), com.batch.android.l1.a.LONG));
            super.setAttribute(str, j2);
            return this;
        } catch (com.batch.android.c1.a.b e2) {
            e2.a(f22831h, str);
            return this;
        }
    }

    @Override // com.batch.android.l1.b
    public BatchProfileAttributeEditor setAttribute(String str, double d) {
        try {
            this.g.a(com.batch.android.c1.a.h(str), new com.batch.android.l1.d(Double.valueOf(d), com.batch.android.l1.a.DOUBLE));
            super.setAttribute(str, d);
            return this;
        } catch (com.batch.android.c1.a.b e2) {
            e2.a(f22831h, str);
            return this;
        }
    }

    @Override // com.batch.android.l1.b
    public BatchProfileAttributeEditor setAttribute(String str, boolean z) {
        try {
            this.g.a(com.batch.android.c1.a.h(str), new com.batch.android.l1.d(Boolean.valueOf(z), com.batch.android.l1.a.BOOL));
            super.setAttribute(str, z);
            return this;
        } catch (com.batch.android.c1.a.b e2) {
            e2.a(f22831h, str);
            return this;
        }
    }

    @Override // com.batch.android.l1.b
    public BatchProfileAttributeEditor setAttribute(String str, Date date) {
        try {
            com.batch.android.c1.a.a(date);
            this.g.a(com.batch.android.c1.a.h(str), new com.batch.android.l1.d(date, com.batch.android.l1.a.DATE));
            super.setAttribute(str, date);
            return this;
        } catch (com.batch.android.c1.a.b e2) {
            e2.a(f22831h, str);
            return this;
        }
    }

    @Override // com.batch.android.l1.b
    public BatchProfileAttributeEditor setAttribute(String str, String str2) {
        try {
            com.batch.android.c1.a.a((Object) str2);
            String strH = com.batch.android.c1.a.h(str);
            if (com.batch.android.c1.a.g(str2)) {
                t.a(f22831h, "String attributes can't be null or longer than 64 characters. Ignoring attribute '" + str + "'");
                return this;
            }
            this.g.a(strH, new com.batch.android.l1.d(str2, com.batch.android.l1.a.STRING));
            super.setAttribute(str, str2);
            return this;
        } catch (com.batch.android.c1.a.b e2) {
            e2.a(f22831h, str);
            return this;
        }
    }

    public BatchProfileAttributeEditor setAttribute(String str, List<String> list) {
        try {
            String strH = com.batch.android.c1.a.h(str);
            if (com.batch.android.c1.a.a(list)) {
                t.a(f22831h, "Array of string attributes must not be longer than 25 items, only values of type String and must respect the string attribute limitations. Ignoring attribute '" + str + "'");
                return this;
            }
            this.g.a(strH, new com.batch.android.l1.d(new ArrayList(list), com.batch.android.l1.a.STRING_ARRAY));
            super.a(str);
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                super.a(str, it.next());
            }
            return this;
        } catch (com.batch.android.c1.a.b e2) {
            e2.a(f22831h, str);
            return this;
        }
    }
}
