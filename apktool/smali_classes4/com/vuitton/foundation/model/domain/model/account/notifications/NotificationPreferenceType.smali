.class public final enum Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0087\u0081\u0002\u0018\u0000 \u00022\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;",
        "",
        "Companion",
        "BRAND_COMMUNICATION",
        "PRODUCT_ORIENTED_COMMUNICATION",
        "NOTIFY_ME",
        "domain"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

.field private static final $cachedSerializer$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final enum BRAND_COMMUNICATION:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

.field public static final Companion:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType$Companion;

.field public static final enum NOTIFY_ME:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

.field public static final enum PRODUCT_ORIENTED_COMMUNICATION:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    const-string v1, "BRAND_COMMUNICATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->BRAND_COMMUNICATION:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    const-string v2, "PRODUCT_ORIENTED_COMMUNICATION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->PRODUCT_ORIENTED_COMMUNICATION:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    const-string v3, "NOTIFY_ME"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->NOTIFY_ME:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    filled-new-array {v0, v1, v2}, [Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->$VALUES:[Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->Companion:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lmg0;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lmg0;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;
    .locals 1

    const-class v0, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;
    .locals 1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->$VALUES:[Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    return-object v0
.end method
