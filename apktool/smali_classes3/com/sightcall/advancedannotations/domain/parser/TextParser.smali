.class public final Lcom/sightcall/advancedannotations/domain/parser/TextParser;
.super Lcom/sightcall/advancedannotations/domain/parser/InstructionParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/advancedannotations/domain/parser/TextParser$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/advancedannotations/domain/parser/InstructionParser<",
        "Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\tB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/sightcall/advancedannotations/domain/parser/TextParser;",
        "Lcom/sightcall/advancedannotations/domain/parser/InstructionParser;",
        "Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;",
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
.field public static final Companion:Lcom/sightcall/advancedannotations/domain/parser/TextParser$Companion;

.field public static final TextInstruction:C = 'T'


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sightcall/advancedannotations/domain/parser/TextParser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/advancedannotations/domain/parser/TextParser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sightcall/advancedannotations/domain/parser/TextParser;->Companion:Lcom/sightcall/advancedannotations/domain/parser/TextParser$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x54

    invoke-direct {p0, v0}, Lcom/sightcall/advancedannotations/domain/parser/InstructionParser;-><init>(C)V

    return-void
.end method


# virtual methods
.method public parseComponent(Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sightcall/advancedannotations/domain/parser/InstructionParserKt;->getNextDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sightcall/advancedannotations/domain/parser/InstructionParserKt;->getNextDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v4, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sightcall/advancedannotations/domain/parser/InstructionParserKt;->getTextMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;

    sget-object v4, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;->Companion:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition$Companion;

    invoke-virtual {v4, v1, v2}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition$Companion;->from$advancedannotations_release(Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;-><init>(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/sightcall/advancedannotations/domain/parser/InstructionParser;->setValue(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v1, p0

    add-int/2addr v1, v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/2addr p0, v1

    add-int/2addr p0, v0

    return p0
.end method
