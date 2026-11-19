.class public abstract Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001\u0082\u0001\u0003\u0002\u0003\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/authentication/social/GoogleAuthParams;",
        "Lcom/vuitton/foundation/model/domain/model/authentication/social/KakaoAuthParams;",
        "Lcom/vuitton/foundation/model/domain/model/authentication/social/LineAuthParams;",
        "domain"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p12, p11, 0x20

    const/4 v0, 0x0

    if-eqz p12, :cond_0

    move-object p6, v0

    :cond_0
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_1

    move-object p9, v0

    :cond_1
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_2

    move-object p10, v0

    :cond_2
    const/4 p11, 0x0

    .line 22
    invoke-direct/range {p0 .. p11}, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;->g:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    iput-object p9, p0, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;->h:Ljava/lang/String;

    iput-object p10, p0, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;->e:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;->h:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;->d:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;->i:Ljava/lang/String;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;->f:Ljava/lang/String;

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;->b:Ljava/lang/String;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;->a:Ljava/lang/String;

    return-object p0
.end method
