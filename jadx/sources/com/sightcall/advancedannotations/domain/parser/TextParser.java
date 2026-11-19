package com.sightcall.advancedannotations.domain.parser;

import com.sightcall.advancedannotations.domain.drawer.AnnotationPosition;
import com.sightcall.advancedannotations.domain.drawer.TextParameters;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0000\u0018\u0000 \t2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\tB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\n"}, d2 = {"Lcom/sightcall/advancedannotations/domain/parser/TextParser;", "Lcom/sightcall/advancedannotations/domain/parser/InstructionParser;", "Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;", "<init>", "()V", "parseComponent", "", "string", "", "Companion", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TextParser extends InstructionParser<TextParameters> {
    public static final char TextInstruction = 'T';

    public TextParser() {
        super(TextInstruction);
    }

    @Override // com.sightcall.advancedannotations.domain.parser.InstructionParser
    public int parseComponent(String string) {
        string.getClass();
        String nextDigits = InstructionParserKt.getNextDigits(string.substring(1));
        String nextDigits2 = InstructionParserKt.getNextDigits(string.substring(nextDigits.length() + 2));
        String textMessage = InstructionParserKt.getTextMessage(string.substring(nextDigits2.length() + nextDigits.length() + 2 + 1));
        setValue(new TextParameters(AnnotationPosition.INSTANCE.from$advancedannotations_release(nextDigits, nextDigits2), textMessage));
        return textMessage.length() + nextDigits2.length() + nextDigits.length() + 2 + 1 + 1;
    }
}
