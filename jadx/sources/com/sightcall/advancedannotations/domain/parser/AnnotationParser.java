package com.sightcall.advancedannotations.domain.parser;

import com.sightcall.advancedannotations.domain.drawer.AnnotationId;
import com.sightcall.advancedannotations.domain.drawer.AnnotationSenderId;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.text.CharsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0000\u0018\u0000 \u000b2\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¨\u0006\f"}, d2 = {"Lcom/sightcall/advancedannotations/domain/parser/AnnotationParser;", "Lcom/sightcall/advancedannotations/domain/parser/InstructionParser;", "Lkotlin/Pair;", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;", "<init>", "()V", "parseComponent", "", "string", "", "Companion", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AnnotationParser extends InstructionParser<Pair<? extends AnnotationSenderId, ? extends AnnotationId>> {
    public static final char AnnotationInstruction = '@';

    public AnnotationParser() {
        super(AnnotationInstruction);
    }

    @Override // com.sightcall.advancedannotations.domain.parser.InstructionParser
    public int parseComponent(String string) {
        Pair pair;
        string.getClass();
        String strSubstring = string.substring(1, 2);
        Object remote = strSubstring.equals("L") ? AnnotationSenderId.Local.INSTANCE : new AnnotationSenderId.Remote(Integer.parseInt(strSubstring, CharsKt.checkRadix(16)));
        if (string.charAt(2) == '*') {
            pair = new Pair(AnnotationId.All.INSTANCE, 1);
        } else {
            String nextDigits = InstructionParserKt.getNextDigits(string.substring(2));
            pair = new Pair(new AnnotationId.Specific(Integer.parseInt(nextDigits, CharsKt.checkRadix(10))), Integer.valueOf(nextDigits.length()));
        }
        AnnotationId annotationId = (AnnotationId) pair.f71705b;
        int iIntValue = ((Number) pair.f71706c).intValue();
        setValue(new Pair(remote, annotationId));
        return iIntValue + 2;
    }
}
