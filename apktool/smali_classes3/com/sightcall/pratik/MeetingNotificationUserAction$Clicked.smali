.class public final Lcom/sightcall/pratik/MeetingNotificationUserAction$Clicked;
.super Lcom/sightcall/pratik/MeetingNotificationUserAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/pratik/MeetingNotificationUserAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Clicked"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/sightcall/pratik/MeetingNotificationUserAction$Clicked;",
        "Lcom/sightcall/pratik/MeetingNotificationUserAction;",
        "<init>",
        "()V",
        "pratik_release"
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
.field public static final INSTANCE:Lcom/sightcall/pratik/MeetingNotificationUserAction$Clicked;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/pratik/MeetingNotificationUserAction$Clicked;

    invoke-direct {v0}, Lcom/sightcall/pratik/MeetingNotificationUserAction$Clicked;-><init>()V

    sput-object v0, Lcom/sightcall/pratik/MeetingNotificationUserAction$Clicked;->INSTANCE:Lcom/sightcall/pratik/MeetingNotificationUserAction$Clicked;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "clicked"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sightcall/pratik/MeetingNotificationUserAction;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
