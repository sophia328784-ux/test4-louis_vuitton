.class public final Lcom/sightcall/advancedannotations/domain/parser/ResourceParser;
.super Lcom/sightcall/advancedannotations/domain/parser/InstructionParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/advancedannotations/domain/parser/ResourceParser$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/advancedannotations/domain/parser/InstructionParser<",
        "Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\tB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/sightcall/advancedannotations/domain/parser/ResourceParser;",
        "Lcom/sightcall/advancedannotations/domain/parser/InstructionParser;",
        "Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;",
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
.field public static final Companion:Lcom/sightcall/advancedannotations/domain/parser/ResourceParser$Companion;

.field public static final ResourceInstruction:C = 'N'


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sightcall/advancedannotations/domain/parser/ResourceParser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/advancedannotations/domain/parser/ResourceParser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sightcall/advancedannotations/domain/parser/ResourceParser;->Companion:Lcom/sightcall/advancedannotations/domain/parser/ResourceParser$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lcom/sightcall/advancedannotations/domain/parser/InstructionParser;-><init>(C)V

    return-void
.end method


# virtual methods
.method public parseComponent(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sightcall/advancedannotations/domain/parser/InstructionParserKt;->getNextDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;

    const/16 v2, 0xa

    invoke-static {v2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/sightcall/advancedannotations/domain/parser/InstructionParser;->setValue(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
