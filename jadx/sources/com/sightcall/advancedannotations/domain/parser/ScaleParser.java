package com.sightcall.advancedannotations.domain.parser;

import com.sightcall.advancedannotations.domain.drawer.AnnotationScale;
import kotlin.Metadata;
import kotlin.text.CharsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0000\u0018\u0000 \t2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\tB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\n"}, d2 = {"Lcom/sightcall/advancedannotations/domain/parser/ScaleParser;", "Lcom/sightcall/advancedannotations/domain/parser/InstructionParser;", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;", "<init>", "()V", "parseComponent", "", "string", "", "Companion", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ScaleParser extends InstructionParser<AnnotationScale> {
    public static final char ScaleInstruction = 'S';

    public ScaleParser() {
        super(ScaleInstruction);
    }

    @Override // com.sightcall.advancedannotations.domain.parser.InstructionParser
    public int parseComponent(String string) {
        string.getClass();
        String nextDigits = InstructionParserKt.getNextDigits(string.substring(1));
        setValue(new AnnotationScale(Integer.parseInt(nextDigits, CharsKt.checkRadix(10))));
        return nextDigits.length() + 1;
    }
}
