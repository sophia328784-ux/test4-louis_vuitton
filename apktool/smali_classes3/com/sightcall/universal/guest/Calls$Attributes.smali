.class Lcom/sightcall/universal/guest/Calls$Attributes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/guest/Calls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attributes"
.end annotation


# instance fields
.field nextAction:Lcom/sightcall/universal/guest/Calls$Action;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "next-action"
    .end annotation
.end field

.field pincode:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "pincode"
    .end annotation
.end field

.field state:Lcom/sightcall/universal/guest/Calls$State;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "state"
    .end annotation
.end field

.field suffix:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "suffix"
    .end annotation
.end field

.field uid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "uid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
