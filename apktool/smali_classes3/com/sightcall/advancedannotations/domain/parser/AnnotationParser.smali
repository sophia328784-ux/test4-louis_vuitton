.class public final Lcom/sightcall/advancedannotations/domain/parser/AnnotationParser;
.super Lcom/sightcall/advancedannotations/domain/parser/InstructionParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/advancedannotations/domain/parser/AnnotationParser$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/advancedannotations/domain/parser/InstructionParser<",
        "Lkotlin/Pair<",
        "+",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;",
        "+",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u000b2\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00020\u0001:\u0001\u000bB\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/sightcall/advancedannotations/domain/parser/AnnotationParser;",
        "Lcom/sightcall/advancedannotations/domain/parser/InstructionParser;",
        "Lkotlin/Pair;",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;",
        "<init>",
        "()V",
        "parseComponent",
        "",
        "string",
        "",
        "Companion",
        "advancedannotations_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final AnnotationInstruction:C = '@'

.field public static final Companion:Lcom/sightcall/advancedannotations/domain/parser/AnnotationParser$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sightcall/advancedannotations/domain/parser/AnnotationParser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/advancedannotations/domain/parser/AnnotationParser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sightcall/advancedannotations/domain/parser/AnnotationParser;->Companion:Lcom/sightcall/advancedannotations/domain/parser/AnnotationParser$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/sightcall/advancedannotations/domain/parser/InstructionParser;-><init>(C)V

    return-void
.end method


# virtual methods
.method public parseComponent(Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "L"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v2, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Remote;

    const/16 v4, 0x10

    invoke-static {v4}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v3, v2}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Remote;-><init>(I)V

    move-object v2, v3

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2a

    if-ne v3, v4, :cond_1

    sget-object p1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$All;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$All;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sightcall/advancedannotations/domain/parser/InstructionParserKt;->getNextDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    const/16 v3, 0xa

    invoke-static {v3}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v0, v3}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    iget-object p1, v3, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast p1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;

    iget-object v0, v3, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/sightcall/advancedannotations/domain/parser/InstructionParser;->setValue(Ljava/lang/Object;)V

    add-int/2addr v0, v1

    return v0
.end method
