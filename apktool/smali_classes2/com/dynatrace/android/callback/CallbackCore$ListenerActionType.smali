.class final enum Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/android/callback/CallbackCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListenerActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

.field public static final enum Clicked:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

.field public static final enum ItemClicked:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

.field public static final enum ItemSelected:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

.field public static final enum MenuItemClick:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

.field public static final enum OptionsItemSelected:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

.field public static final enum PageSelected:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

.field public static final enum SwipeToRefresh:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    const-string v1, "Clicked"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;->Clicked:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    new-instance v1, Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    const-string v2, "ItemClicked"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;->ItemClicked:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    new-instance v2, Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    const-string v3, "ItemSelected"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;->ItemSelected:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    new-instance v3, Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    const-string v4, "MenuItemClick"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;->MenuItemClick:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    new-instance v4, Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    const-string v5, "OptionsItemSelected"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;->OptionsItemSelected:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    new-instance v5, Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    const-string v6, "PageSelected"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;->PageSelected:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    new-instance v6, Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    const-string v7, "SwipeToRefresh"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;->SwipeToRefresh:Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    filled-new-array/range {v0 .. v6}, [Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;->$VALUES:[Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;
    .locals 1

    const-class v0, Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    return-object p0
.end method

.method public static values()[Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;
    .locals 1

    sget-object v0, Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;->$VALUES:[Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    invoke-virtual {v0}, [Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dynatrace/android/callback/CallbackCore$ListenerActionType;

    return-object v0
.end method
