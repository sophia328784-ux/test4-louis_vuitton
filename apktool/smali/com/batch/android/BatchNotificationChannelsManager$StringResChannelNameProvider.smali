.class public final Lcom/batch/android/BatchNotificationChannelsManager$StringResChannelNameProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/BatchNotificationChannelsManager$ChannelNameProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/BatchNotificationChannelsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringResChannelNameProvider"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/BatchNotificationChannelsManager$StringResChannelNameProvider;->a:Landroid/content/Context;

    iput p2, p0, Lcom/batch/android/BatchNotificationChannelsManager$StringResChannelNameProvider;->b:I

    return-void
.end method


# virtual methods
.method public getDefaultChannelName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/batch/android/BatchNotificationChannelsManager$StringResChannelNameProvider;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p0, p0, Lcom/batch/android/BatchNotificationChannelsManager$StringResChannelNameProvider;->b:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
