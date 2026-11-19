.class Lcom/sightcall/universal/media/UploaderService$GroupDataHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/media/UploaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupDataHolder"
.end annotation


# instance fields
.field count:I

.field metadata:Lcom/sightcall/universal/media/Metadata;

.field final synthetic this$0:Lcom/sightcall/universal/media/UploaderService;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/media/UploaderService;Lcom/sightcall/universal/media/Metadata;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/media/UploaderService$GroupDataHolder;->this$0:Lcom/sightcall/universal/media/UploaderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sightcall/universal/media/UploaderService$GroupDataHolder;->count:I

    iput-object p2, p0, Lcom/sightcall/universal/media/UploaderService$GroupDataHolder;->metadata:Lcom/sightcall/universal/media/Metadata;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/media/UploaderService$GroupDataHolder;->count:I

    return p0
.end method

.method public increment()V
    .locals 1

    iget v0, p0, Lcom/sightcall/universal/media/UploaderService$GroupDataHolder;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sightcall/universal/media/UploaderService$GroupDataHolder;->count:I

    return-void
.end method
