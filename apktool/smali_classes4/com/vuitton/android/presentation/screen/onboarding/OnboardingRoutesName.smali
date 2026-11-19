.class public final enum Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000b\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;",
        "",
        "LOGIN",
        "PRIVACY_PRE_COMPLIANCE",
        "PIPL_CBT",
        "PRIVACY",
        "START_NOW",
        "NOTIFICATIONS",
        "GEOLOCATION",
        "ICONS",
        "TRANSITION",
        "DONE",
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

.field private static final synthetic $VALUES:[Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

.field public static final enum DONE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

.field public static final enum GEOLOCATION:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

.field public static final enum ICONS:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

.field public static final enum LOGIN:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

.field public static final enum NOTIFICATIONS:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

.field public static final enum PIPL_CBT:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

.field public static final enum PRIVACY:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

.field public static final enum PRIVACY_PRE_COMPLIANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

.field public static final enum START_NOW:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

.field public static final enum TRANSITION:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    const-string v1, "LOGIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;->LOGIN:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    new-instance v1, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    const-string v2, "PRIVACY_PRE_COMPLIANCE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;->PRIVACY_PRE_COMPLIANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    new-instance v2, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    const-string v3, "PIPL_CBT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;->PIPL_CBT:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    new-instance v3, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    const-string v4, "PRIVACY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;->PRIVACY:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    new-instance v4, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    const-string v5, "START_NOW"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;->START_NOW:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    new-instance v5, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    const-string v6, "NOTIFICATIONS"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;->NOTIFICATIONS:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    new-instance v6, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    const-string v7, "GEOLOCATION"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;->GEOLOCATION:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    new-instance v7, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    const-string v8, "ICONS"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;->ICONS:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    new-instance v8, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    const-string v9, "TRANSITION"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;->TRANSITION:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    new-instance v9, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    const-string v10, "DONE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;->DONE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    filled-new-array/range {v0 .. v9}, [Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;->$VALUES:[Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;
    .locals 1

    const-class v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;->$VALUES:[Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    return-object v0
.end method
