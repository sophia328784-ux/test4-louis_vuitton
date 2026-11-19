.class public Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$MultiSendResponseParser;,
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$GroupParser;,
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$FriendshipStatusParser;,
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$ProfileParser;,
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$FriendsParser;,
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatRoomJoinTypeParser;,
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$MembershipStatusParser;,
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatRoomStatusParser;,
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatRoomInfoParser;,
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatAgreementStatusParser;
    }
.end annotation


# static fields
.field public static final c:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

.field public static final d:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

.field public static final e:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

.field public static final f:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

.field public static final g:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

.field public static final h:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

.field public static final i:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

.field public static final j:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

.field public static final k:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

.field public static final l:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$ProfileParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->c:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$FriendshipStatusParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;-><init>()V

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$FriendsParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;-><init>()V

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$GroupParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;-><init>()V

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$MultiSendResponseParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;-><init>()V

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatAgreementStatusParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->h:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatRoomInfoParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->i:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatRoomStatusParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;-><init>()V

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$MembershipStatusParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;-><init>()V

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatRoomJoinTypeParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    const-string v1, "5.11.1"

    invoke-direct {v0, p1, v1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->b:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    return-void
.end method

.method public static a(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/LinkedHashMap;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bearer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/InternalAccessToken;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Authorization"

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/linecorp/linesdk/utils/UriUtils;->b([Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method
