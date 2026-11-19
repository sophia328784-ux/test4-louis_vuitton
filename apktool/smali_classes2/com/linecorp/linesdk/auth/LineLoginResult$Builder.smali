.class public final Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/auth/LineLoginResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Lcom/linecorp/linesdk/LineApiResponseCode;

.field public b:Ljava/lang/String;

.field public c:Lcom/linecorp/linesdk/LineProfile;

.field public d:Lcom/linecorp/linesdk/LineIdToken;

.field public e:Ljava/lang/Boolean;

.field public f:Lcom/linecorp/linesdk/LineCredential;

.field public g:Lcom/linecorp/linesdk/LineApiError;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->SUCCESS:Lcom/linecorp/linesdk/LineApiResponseCode;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->a:Lcom/linecorp/linesdk/LineApiResponseCode;

    sget-object v0, Lcom/linecorp/linesdk/LineApiError;->e:Lcom/linecorp/linesdk/LineApiError;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->g:Lcom/linecorp/linesdk/LineApiError;

    return-void
.end method
