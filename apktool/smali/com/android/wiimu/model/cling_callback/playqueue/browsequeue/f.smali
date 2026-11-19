.class public Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public CurrentPage:I

.field public LastPlayIndex:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public PicUrl:Ljava/lang/String;

.field public PresetKey:Ljava/lang/String;

.field public PresetName:Ljava/lang/String;

.field public PressType:Ljava/lang/String;

.field public Quality:Ljava/lang/String;

.field public SearchUrl:Ljava/lang/String;

.field public Source:Ljava/lang/String;

.field public SrcParent:Ljava/lang/String;

.field public TotalPages:I

.field public TrackNumber:Ljava/lang/String;

.field public UpdateTime:Ljava/lang/String;

.field public hasMedia:Z

.field public isRadio:Z

.field public toneid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->Name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->Source:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->SearchUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->PicUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->Quality:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->UpdateTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->LastPlayIndex:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->TrackNumber:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->isRadio:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->hasMedia:Z

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->SrcParent:Ljava/lang/String;

    iput v1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->CurrentPage:I

    iput v1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->TotalPages:I

    iput v1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->toneid:I

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->PresetName:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->PresetKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->PressType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear(Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;)V
    .locals 0

    const-string p0, ""

    iput-object p0, p1, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->Name:Ljava/lang/String;

    iput-object p0, p1, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->Source:Ljava/lang/String;

    iput-object p0, p1, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->SearchUrl:Ljava/lang/String;

    iput-object p0, p1, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->PicUrl:Ljava/lang/String;

    iput-object p0, p1, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->Quality:Ljava/lang/String;

    iput-object p0, p1, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->UpdateTime:Ljava/lang/String;

    iput-object p0, p1, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->LastPlayIndex:Ljava/lang/String;

    iput-object p0, p1, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->TrackNumber:Ljava/lang/String;

    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->isRadio:Z

    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->hasMedia:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SourceItemBase [Name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->Source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", SearchUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->SearchUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", PicUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->PicUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Quality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->Quality:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", UpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->UpdateTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", LastPlayIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->LastPlayIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", TrackNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->TrackNumber:Ljava/lang/String;

    const-string v1, "]"

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
