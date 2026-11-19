.class public Lcom/sightcall/universal/agent/CreateRecordingCallback$Success;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/CreateRecordingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Success"
.end annotation


# instance fields
.field final recording:Lcom/sightcall/universal/agent/recording/RecordingV3Entity;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/recording/RecordingV3Entity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/agent/CreateRecordingCallback$Success;->recording:Lcom/sightcall/universal/agent/recording/RecordingV3Entity;

    return-void
.end method


# virtual methods
.method public recording()Lcom/sightcall/universal/agent/recording/RecordingV3Entity;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/CreateRecordingCallback$Success;->recording:Lcom/sightcall/universal/agent/recording/RecordingV3Entity;

    return-object p0
.end method
