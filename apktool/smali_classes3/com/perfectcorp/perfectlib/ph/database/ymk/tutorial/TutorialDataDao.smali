.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/tutorial/TutorialDataDao;
.super Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao<",
        "Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lcom/perfectcorp/perfectlib/ph/database/ymk/tutorial/TutorialDataDao;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/tutorial/TutorialDataDao;

    const-string v1, "TutorialInfo"

    sget-object v2, Lcom/perfectcorp/perfectlib/hc/database/Contract$TutorialInfo;->b:[Ljava/lang/String;

    const-string v3, "TutorialInfoDao"

    invoke-direct {v0, v3, v1, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/tutorial/TutorialDataDao;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/tutorial/TutorialDataDao;

    return-void
.end method


# virtual methods
.method public final l(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 6

    const-string p0, "guid"

    invoke-static {p1, p0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->g(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->g(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "payload"

    invoke-static {p1, v1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->g(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "expiredDate"

    invoke-static {p1, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->g(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lastModified"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-string v5, "isDownloaded"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData$Builder;

    invoke-direct {v5}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData$Builder;-><init>()V

    iput-object p0, v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData$Builder;->a:Ljava/lang/String;

    iput-object v0, v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData$Builder;->b:Ljava/lang/String;

    sget-object p0, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    const-class v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$Payload;

    invoke-virtual {p0, v1, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$Payload;

    iput-object p0, v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData$Builder;->c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$Payload;

    iput-object v2, v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData$Builder;->d:Ljava/lang/String;

    iput-wide v3, v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData$Builder;->e:J

    iput-boolean p1, v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData$Builder;->f:Z

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData;

    invoke-direct {p0, v5}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData$Builder;)V

    return-object p0
.end method

.method public final synthetic n(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 2

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData;

    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "guid"

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData;->guid:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData;->payload:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$Payload;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "payload"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "type"

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData;->type:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "expiredDate"

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData;->expiredDate:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData;->lastModified:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "lastModified"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-boolean p1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData;->isDownloaded:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isDownloaded"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object p0
.end method
