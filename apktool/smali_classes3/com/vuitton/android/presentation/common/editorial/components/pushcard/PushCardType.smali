.class public final enum Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u0000 \r2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\rR\"\u0010\u0005\u001a\r\u0012\u0004\u0012\u00020\u00030\u0002\u00a2\u0006\u0002\u0008\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\"\u0010\t\u001a\r\u0012\u0004\u0012\u00020\u00030\u0002\u00a2\u0006\u0002\u0008\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0006\u001a\u0004\u0008\n\u0010\u0008R\"\u0010\u000b\u001a\r\u0012\u0004\u0012\u00020\u00030\u0002\u00a2\u0006\u0002\u0008\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0006\u001a\u0004\u0008\u000c\u0010\u0008j\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;",
        "",
        "Lkotlin/Function0;",
        "Landroidx/compose/ui/graphics/Color;",
        "Landroidx/compose/runtime/Composable;",
        "contentColor",
        "Lkotlin/jvm/functions/Function2;",
        "b",
        "()Lkotlin/jvm/functions/Function2;",
        "containerColor",
        "a",
        "descriptionColor",
        "c",
        "Companion",
        "DEFAULT",
        "INVERT",
        "presentation"
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;

.field public static final Companion:Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType$Companion;

.field public static final enum DEFAULT:Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;

.field public static final enum INVERT:Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;


# instance fields
.field private final containerColor:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field private final contentColor:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field private final descriptionColor:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;

    sget-object v4, Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType$2;->b:Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType$2;

    sget-object v5, Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType$3;->b:Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType$3;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    sget-object v3, Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType$1;->b:Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType$1;

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;->DEFAULT:Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;

    new-instance v1, Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;

    sget-object v5, Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType$5;->b:Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType$5;

    sget-object v6, Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType$6;->b:Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType$6;

    const-string v2, "INVERT"

    const/4 v3, 0x1

    sget-object v4, Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType$4;->b:Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType$4;

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    sput-object v1, Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;->INVERT:Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;

    filled-new-array {v0, v1}, [Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;->$VALUES:[Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;->Companion:Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;->contentColor:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;->containerColor:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;->descriptionColor:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;
    .locals 1

    const-class v0, Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;->$VALUES:[Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;

    return-object v0
.end method


# virtual methods
.method public final a()Lkotlin/jvm/functions/Function2;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;->containerColor:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final b()Lkotlin/jvm/functions/Function2;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;->contentColor:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final c()Lkotlin/jvm/functions/Function2;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;->descriptionColor:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method
