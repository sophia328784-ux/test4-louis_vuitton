.class Lcom/sightcall/universal/agent/ArOverlayModel$Attributes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/ArOverlayModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attributes"
.end annotation


# instance fields
.field configuration:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "configuration"
    .end annotation
.end field

.field name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "name"
    .end annotation
.end field

.field objects:Ljava/util/List;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "objects"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sightcall/universal/agent/MicroServiceObject;",
            ">;"
        }
    .end annotation
.end field

.field sessionTimeout:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "session-timeout"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
