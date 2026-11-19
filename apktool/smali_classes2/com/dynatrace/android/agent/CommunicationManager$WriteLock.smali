.class public Lcom/dynatrace/android/agent/CommunicationManager$WriteLock;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/android/agent/CommunicationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WriteLock"
.end annotation


# instance fields
.field public a:Ljava/io/File;

.field public final synthetic b:Lcom/dynatrace/android/agent/CommunicationManager;


# direct methods
.method public constructor <init>(Lcom/dynatrace/android/agent/CommunicationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/agent/CommunicationManager$WriteLock;->b:Lcom/dynatrace/android/agent/CommunicationManager;

    return-void
.end method
