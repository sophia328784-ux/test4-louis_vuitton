.class public Lorg/teleal/cling/model/meta/Icon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/teleal/cling/model/Validatable;


# static fields
.field public static final h:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lorg/teleal/common/util/MimeType;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Ljava/net/URI;

.field public final f:[B

.field public g:Lorg/teleal/cling/model/meta/Device;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/model/meta/StateVariable;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/meta/Icon;->h:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    .line 45
    sget v0, Lorg/teleal/common/io/IO;->a:I

    .line 46
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 47
    :try_start_0
    invoke-static {v1}, Lorg/teleal/common/io/IO;->a(Ljava/io/InputStream;)[B

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 49
    invoke-direct/range {v1 .. v7}, Lorg/teleal/cling/model/meta/Icon;-><init>(Ljava/lang/String;IIILjava/net/URI;[B)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 50
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 38
    invoke-static {p5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/Icon;-><init>(Ljava/lang/String;IIILjava/net/URI;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/net/URI;)V
    .locals 7

    .line 37
    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/Icon;-><init>(Ljava/lang/String;IIILjava/net/URI;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/net/URI;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-static {p6}, Lorg/teleal/common/io/IO;->a(Ljava/io/InputStream;)[B

    move-result-object p6

    invoke-direct/range {p0 .. p6}, Lorg/teleal/cling/model/meta/Icon;-><init>(Ljava/lang/String;IIILjava/net/URI;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/net/URI;Ljava/lang/String;)V
    .locals 7

    if-eqz p6, :cond_0

    const-string v0, ""

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/teleal/cling/model/types/BinHexDatatype;

    invoke-direct {v0}, Lorg/teleal/cling/model/types/BinHexDatatype;-><init>()V

    invoke-virtual {v0, p6}, Lorg/teleal/cling/model/types/BinHexDatatype;->g(Ljava/lang/String;)[Ljava/lang/Byte;

    move-result-object p6

    invoke-static {p6}, Lorg/teleal/common/util/ByteArray;->a([Ljava/lang/Byte;)[B

    move-result-object p6

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    goto :goto_1

    :cond_0
    const/4 p6, 0x0

    goto :goto_0

    :goto_1
    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/Icon;-><init>(Ljava/lang/String;IIILjava/net/URI;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/net/URI;[B)V
    .locals 7

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 52
    invoke-static {p1}, Lorg/teleal/common/util/MimeType;->a(Ljava/lang/String;)Lorg/teleal/common/util/MimeType;

    move-result-object p1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 53
    :goto_1
    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/Icon;-><init>(Lorg/teleal/common/util/MimeType;IIILjava/net/URI;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/net/URL;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p5

    .line 39
    new-instance p5, Ljava/io/File;

    sget-object v1, Lorg/teleal/common/util/URIUtil;->a:Ljava/util/BitSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    invoke-direct {p5, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-direct/range {p0 .. p5}, Lorg/teleal/cling/model/meta/Icon;-><init>(Ljava/lang/String;IIILjava/io/File;)V

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 42
    invoke-static {p0}, Lx1;->m(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lorg/teleal/common/util/MimeType;IIILjava/net/URI;[B)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/teleal/cling/model/meta/Icon;->a:Lorg/teleal/common/util/MimeType;

    .line 56
    iput p2, p0, Lorg/teleal/cling/model/meta/Icon;->b:I

    .line 57
    iput p3, p0, Lorg/teleal/cling/model/meta/Icon;->c:I

    .line 58
    iput p4, p0, Lorg/teleal/cling/model/meta/Icon;->d:I

    .line 59
    iput-object p5, p0, Lorg/teleal/cling/model/meta/Icon;->e:Ljava/net/URI;

    .line 60
    iput-object p6, p0, Lorg/teleal/cling/model/meta/Icon;->f:[B

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Icon("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/teleal/cling/model/meta/Icon;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/teleal/cling/model/meta/Icon;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/teleal/cling/model/meta/Icon;->a:Lorg/teleal/common/util/MimeType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/teleal/cling/model/meta/Icon;->e:Ljava/net/URI;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
