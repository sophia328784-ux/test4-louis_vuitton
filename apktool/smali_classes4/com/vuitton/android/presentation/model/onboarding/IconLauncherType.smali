.class public final enum Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0011\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0008\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u000c\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0004\u001a\u0004\u0008\r\u0010\u0006R\u0017\u0010\u000e\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\t\u001a\u0004\u0008\u000f\u0010\u000bj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;",
        "",
        "",
        "iconId",
        "Ljava/lang/String;",
        "d",
        "()Ljava/lang/String;",
        "",
        "iconResource",
        "I",
        "e",
        "()I",
        "componentName",
        "a",
        "contentDescription",
        "b",
        "CLASSIC",
        "BAG",
        "MURAKAMI",
        "MURAKAMI_PATTERN",
        "COLOR_DAMIER",
        "MONOGRAM",
        "TWEED_DAMIER",
        "ARMY_DAMIER",
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

.field private static final synthetic $VALUES:[Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

.field public static final enum ARMY_DAMIER:Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

.field public static final enum BAG:Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

.field public static final enum CLASSIC:Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

.field public static final enum COLOR_DAMIER:Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

.field public static final enum MONOGRAM:Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

.field public static final enum MURAKAMI:Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

.field public static final enum MURAKAMI_PATTERN:Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

.field public static final enum TWEED_DAMIER:Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;


# instance fields
.field private final componentName:Ljava/lang/String;

.field private final contentDescription:I

.field private final iconId:Ljava/lang/String;

.field private final iconResource:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    const-string v4, "SplashScreenIcon1Activity"

    const v6, 0x7f1402ff

    const-string v1, "CLASSIC"

    const/4 v2, 0x0

    const-string v3, "logoLv"

    const v5, 0x7f080270

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v0, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->CLASSIC:Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    new-instance v1, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    const-string v5, "SplashScreenIcon2Activity"

    const v7, 0x7f1402fc

    const-string v2, "BAG"

    const/4 v3, 0x1

    const-string v4, "bag"

    const v6, 0x7f08026b

    invoke-direct/range {v1 .. v7}, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v1, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->BAG:Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    new-instance v2, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    const-string v6, "SplashScreenIcon3Activity"

    const v8, 0x7f140301

    const-string v3, "MURAKAMI"

    const/4 v4, 0x2

    const-string v5, "murakami"

    const v7, 0x7f080272

    invoke-direct/range {v2 .. v8}, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v2, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->MURAKAMI:Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    new-instance v3, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    const-string v7, "SplashScreenIcon4Activity"

    const v9, 0x7f140302

    const-string v4, "MURAKAMI_PATTERN"

    const/4 v5, 0x3

    const-string v6, "murakamiPattern"

    const v8, 0x7f080273

    invoke-direct/range {v3 .. v9}, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v3, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->MURAKAMI_PATTERN:Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    new-instance v4, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    const-string v8, "SplashScreenIcon5Activity"

    const v10, 0x7f140303

    const-string v5, "COLOR_DAMIER"

    const/4 v6, 0x4

    const-string v7, "colorDamier"

    const v9, 0x7f08026e

    invoke-direct/range {v4 .. v10}, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v4, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->COLOR_DAMIER:Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    new-instance v5, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    const-string v9, "SplashScreenIcon6Activity"

    const v11, 0x7f140300

    const-string v6, "MONOGRAM"

    const/4 v7, 0x5

    const-string v8, "monogram"

    const v10, 0x7f080271

    invoke-direct/range {v5 .. v11}, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v5, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->MONOGRAM:Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    new-instance v6, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    const-string v10, "SplashScreenIcon7Activity"

    const v12, 0x7f1402fe

    const-string v7, "TWEED_DAMIER"

    const/4 v8, 0x6

    const-string v9, "tweedDamier"

    const v11, 0x7f08026d

    invoke-direct/range {v6 .. v12}, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v6, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->TWEED_DAMIER:Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    new-instance v7, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    const-string v11, "SplashScreenIcon8Activity"

    const v13, 0x7f1402fd

    const-string v8, "ARMY_DAMIER"

    const/4 v9, 0x7

    const-string v10, "armyDamier"

    const v12, 0x7f080269

    invoke-direct/range {v7 .. v13}, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v7, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->ARMY_DAMIER:Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    filled-new-array/range {v0 .. v7}, [Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->$VALUES:[Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->iconId:Ljava/lang/String;

    iput p5, p0, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->iconResource:I

    iput-object p4, p0, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->componentName:Ljava/lang/String;

    iput p6, p0, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->contentDescription:I

    return-void
.end method

.method public static c()Lkotlin/enums/EnumEntries;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;
    .locals 1

    const-class v0, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->$VALUES:[Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->componentName:Ljava/lang/String;

    return-object p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->contentDescription:I

    return p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->iconId:Ljava/lang/String;

    return-object p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->iconResource:I

    return p0
.end method
