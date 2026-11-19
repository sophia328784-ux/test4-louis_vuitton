package com.google.i18n.phonenumbers.internal;

import com.google.i18n.phonenumbers.Phonemetadata$PhoneNumberDesc;
import java.util.regex.Matcher;

/* JADX INFO: loaded from: classes2.dex */
public final class RegexBasedMatcher implements MatcherApi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RegexCache f35652a = new RegexCache(100);

    public final boolean a(CharSequence charSequence, Phonemetadata$PhoneNumberDesc phonemetadata$PhoneNumberDesc) {
        String str = phonemetadata$PhoneNumberDesc.f35641c;
        if (str.length() != 0) {
            Matcher matcher = this.f35652a.a(str).matcher(charSequence);
            return matcher.lookingAt() && matcher.matches();
        }
        return false;
    }
}
