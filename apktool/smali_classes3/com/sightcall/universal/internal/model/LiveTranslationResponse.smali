.class public final Lcom/sightcall/universal/internal/model/LiveTranslationResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/model/LiveTranslationResponse$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J)\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001J\u0014\u0010\u0012\u001a\u00020\u00032\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010\u0014\u001a\u00020\u0015H\u00d6\u0081\u0004J\n\u0010\u0016\u001a\u00020\u0006H\u00d6\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/sightcall/universal/internal/model/LiveTranslationResponse;",
        "",
        "success",
        "",
        "translation",
        "errorReason",
        "",
        "<init>",
        "(ZZLjava/lang/String;)V",
        "getSuccess",
        "()Z",
        "getTranslation",
        "getErrorReason",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "Companion",
        "sdk_installedRelease"
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
.field public static final Companion:Lcom/sightcall/universal/internal/model/LiveTranslationResponse$Companion;


# instance fields
.field private final errorReason:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errorReason"
    .end annotation
.end field

.field private final success:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "success"
    .end annotation
.end field

.field private final translation:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "translation"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sightcall/universal/internal/model/LiveTranslationResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/universal/internal/model/LiveTranslationResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;->Companion:Lcom/sightcall/universal/internal/model/LiveTranslationResponse$Companion;

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;->success:Z

    iput-boolean p2, p0, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;->translation:Z

    iput-object p3, p0, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;->errorReason:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;-><init>(ZZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/universal/internal/model/LiveTranslationResponse;ZZLjava/lang/String;ILjava/lang/Object;)Lcom/sightcall/universal/internal/model/LiveTranslationResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-boolean p1, p0, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;->success:Z

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;->translation:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;->errorReason:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;->copy(ZZLjava/lang/String;)Lcom/sightcall/universal/internal/model/LiveTranslationResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;->success:Z

    return p0
.end method

.method public final component2()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;->translation:Z

    return p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;->errorReason:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(ZZLjava/lang/String;)Lcom/sightcall/universal/internal/model/LiveTranslationResponse;
    .locals 0

    new-instance p0, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;

    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;-><init>(ZZLjava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;

    iget-boolean v1, p0, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;->success:Z

    iget-boolean v3, p1, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;->success:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;->translation:Z

    iget-boolean v3, p1, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;->translation:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;->errorReason:Ljava/lang/String;

    iget-object p1, p1, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;->errorReason:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getErrorReason()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;->errorReason:Ljava/lang/String;

    return-object p0
.end method

.method public final getSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;->success:Z

    return p0
.end method

.method public final getTranslation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;->translation:Z

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;->success:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;->translation:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;->errorReason:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;->success:Z

    iget-boolean v1, p0, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;->translation:Z

    iget-object p0, p0, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;->errorReason:Ljava/lang/String;

    const-string v2, ", translation="

    const-string v3, ", errorReason="

    const-string v4, "LiveTranslationResponse(success="

    invoke-static {v4, v2, v3, v0, v1}, Lcj;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
