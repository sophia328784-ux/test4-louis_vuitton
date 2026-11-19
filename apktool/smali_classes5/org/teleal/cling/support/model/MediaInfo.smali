.class public Lorg/teleal/cling/support/model/MediaInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

.field public final f:Ljava/lang/String;

.field public final g:Lorg/teleal/cling/support/model/StorageMedium;

.field public final h:Lorg/teleal/cling/support/model/StorageMedium;

.field public final i:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const-string v0, ""

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->a:Ljava/lang/String;

    .line 138
    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->b:Ljava/lang/String;

    .line 139
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->c:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->d:Ljava/lang/String;

    .line 141
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->e:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 142
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->f:Ljava/lang/String;

    .line 143
    sget-object v0, Lorg/teleal/cling/support/model/StorageMedium;->NONE:Lorg/teleal/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->g:Lorg/teleal/cling/support/model/StorageMedium;

    .line 144
    sget-object v0, Lorg/teleal/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->h:Lorg/teleal/cling/support/model/StorageMedium;

    .line 145
    sget-object v0, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->i:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const-string v0, ""

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->a:Ljava/lang/String;

    .line 148
    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->b:Ljava/lang/String;

    .line 149
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->c:Ljava/lang/String;

    .line 150
    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->d:Ljava/lang/String;

    .line 151
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->e:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 152
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->f:Ljava/lang/String;

    .line 153
    sget-object v0, Lorg/teleal/cling/support/model/StorageMedium;->NONE:Lorg/teleal/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->g:Lorg/teleal/cling/support/model/StorageMedium;

    .line 154
    sget-object v0, Lorg/teleal/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->h:Lorg/teleal/cling/support/model/StorageMedium;

    .line 155
    sget-object v0, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->i:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    .line 156
    iput-object p1, p0, Lorg/teleal/cling/support/model/MediaInfo;->a:Ljava/lang/String;

    .line 157
    iput-object p2, p0, Lorg/teleal/cling/support/model/MediaInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/teleal/cling/support/model/StorageMedium;)V
    .locals 3

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const-string v0, ""

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->a:Ljava/lang/String;

    .line 191
    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->b:Ljava/lang/String;

    .line 192
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->c:Ljava/lang/String;

    .line 193
    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->d:Ljava/lang/String;

    .line 194
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->e:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 195
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->f:Ljava/lang/String;

    .line 196
    sget-object v0, Lorg/teleal/cling/support/model/StorageMedium;->NONE:Lorg/teleal/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->g:Lorg/teleal/cling/support/model/StorageMedium;

    .line 197
    sget-object v0, Lorg/teleal/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->h:Lorg/teleal/cling/support/model/StorageMedium;

    .line 198
    sget-object v0, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->i:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    .line 199
    iput-object p1, p0, Lorg/teleal/cling/support/model/MediaInfo;->a:Ljava/lang/String;

    .line 200
    iput-object p2, p0, Lorg/teleal/cling/support/model/MediaInfo;->b:Ljava/lang/String;

    .line 201
    iput-object p3, p0, Lorg/teleal/cling/support/model/MediaInfo;->c:Ljava/lang/String;

    .line 202
    iput-object p4, p0, Lorg/teleal/cling/support/model/MediaInfo;->d:Ljava/lang/String;

    .line 203
    iput-object p5, p0, Lorg/teleal/cling/support/model/MediaInfo;->e:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 204
    iput-object p6, p0, Lorg/teleal/cling/support/model/MediaInfo;->f:Ljava/lang/String;

    .line 205
    iput-object p7, p0, Lorg/teleal/cling/support/model/MediaInfo;->g:Lorg/teleal/cling/support/model/StorageMedium;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/teleal/cling/support/model/StorageMedium;Lorg/teleal/cling/support/model/StorageMedium;Lorg/teleal/cling/support/model/RecordMediumWriteStatus;)V
    .locals 3

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const-string v0, ""

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->a:Ljava/lang/String;

    .line 208
    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->b:Ljava/lang/String;

    .line 209
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->c:Ljava/lang/String;

    .line 210
    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->d:Ljava/lang/String;

    .line 211
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->e:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 212
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->f:Ljava/lang/String;

    .line 213
    sget-object v0, Lorg/teleal/cling/support/model/StorageMedium;->NONE:Lorg/teleal/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->g:Lorg/teleal/cling/support/model/StorageMedium;

    .line 214
    sget-object v0, Lorg/teleal/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->h:Lorg/teleal/cling/support/model/StorageMedium;

    .line 215
    iput-object p1, p0, Lorg/teleal/cling/support/model/MediaInfo;->a:Ljava/lang/String;

    .line 216
    iput-object p2, p0, Lorg/teleal/cling/support/model/MediaInfo;->b:Ljava/lang/String;

    .line 217
    iput-object p3, p0, Lorg/teleal/cling/support/model/MediaInfo;->c:Ljava/lang/String;

    .line 218
    iput-object p4, p0, Lorg/teleal/cling/support/model/MediaInfo;->d:Ljava/lang/String;

    .line 219
    iput-object p5, p0, Lorg/teleal/cling/support/model/MediaInfo;->e:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 220
    iput-object p6, p0, Lorg/teleal/cling/support/model/MediaInfo;->f:Ljava/lang/String;

    .line 221
    iput-object p7, p0, Lorg/teleal/cling/support/model/MediaInfo;->g:Lorg/teleal/cling/support/model/StorageMedium;

    .line 222
    iput-object p8, p0, Lorg/teleal/cling/support/model/MediaInfo;->h:Lorg/teleal/cling/support/model/StorageMedium;

    .line 223
    iput-object p9, p0, Lorg/teleal/cling/support/model/MediaInfo;->i:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/teleal/cling/support/model/StorageMedium;)V
    .locals 3

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    const-string v0, ""

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->a:Ljava/lang/String;

    .line 160
    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->b:Ljava/lang/String;

    .line 161
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->c:Ljava/lang/String;

    .line 162
    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->d:Ljava/lang/String;

    .line 163
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->e:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 164
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->f:Ljava/lang/String;

    .line 165
    sget-object v0, Lorg/teleal/cling/support/model/StorageMedium;->NONE:Lorg/teleal/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->g:Lorg/teleal/cling/support/model/StorageMedium;

    .line 166
    sget-object v0, Lorg/teleal/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->h:Lorg/teleal/cling/support/model/StorageMedium;

    .line 167
    sget-object v0, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->i:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    .line 168
    iput-object p1, p0, Lorg/teleal/cling/support/model/MediaInfo;->a:Ljava/lang/String;

    .line 169
    iput-object p2, p0, Lorg/teleal/cling/support/model/MediaInfo;->b:Ljava/lang/String;

    .line 170
    iput-object p3, p0, Lorg/teleal/cling/support/model/MediaInfo;->e:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 171
    iput-object p4, p0, Lorg/teleal/cling/support/model/MediaInfo;->f:Ljava/lang/String;

    .line 172
    iput-object p5, p0, Lorg/teleal/cling/support/model/MediaInfo;->g:Lorg/teleal/cling/support/model/StorageMedium;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/teleal/cling/support/model/StorageMedium;Lorg/teleal/cling/support/model/StorageMedium;Lorg/teleal/cling/support/model/RecordMediumWriteStatus;)V
    .locals 3

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const-string v0, ""

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->a:Ljava/lang/String;

    .line 175
    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->b:Ljava/lang/String;

    .line 176
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->c:Ljava/lang/String;

    .line 177
    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->d:Ljava/lang/String;

    .line 178
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->e:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 179
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->f:Ljava/lang/String;

    .line 180
    sget-object v0, Lorg/teleal/cling/support/model/StorageMedium;->NONE:Lorg/teleal/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->g:Lorg/teleal/cling/support/model/StorageMedium;

    .line 181
    sget-object v0, Lorg/teleal/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->h:Lorg/teleal/cling/support/model/StorageMedium;

    .line 182
    iput-object p1, p0, Lorg/teleal/cling/support/model/MediaInfo;->a:Ljava/lang/String;

    .line 183
    iput-object p2, p0, Lorg/teleal/cling/support/model/MediaInfo;->b:Ljava/lang/String;

    .line 184
    iput-object p3, p0, Lorg/teleal/cling/support/model/MediaInfo;->e:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 185
    iput-object p4, p0, Lorg/teleal/cling/support/model/MediaInfo;->f:Ljava/lang/String;

    .line 186
    iput-object p5, p0, Lorg/teleal/cling/support/model/MediaInfo;->g:Lorg/teleal/cling/support/model/StorageMedium;

    .line 187
    iput-object p6, p0, Lorg/teleal/cling/support/model/MediaInfo;->h:Lorg/teleal/cling/support/model/StorageMedium;

    .line 188
    iput-object p7, p0, Lorg/teleal/cling/support/model/MediaInfo;->i:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/teleal/cling/model/action/ActionArgumentValue;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CurrentURI"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    iget-object v0, v0, Lorg/teleal/cling/model/VariableValue;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const-string v0, "CurrentURIMetaData"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    iget-object v0, v0, Lorg/teleal/cling/model/VariableValue;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const-string v0, "NextURI"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    iget-object v0, v0, Lorg/teleal/cling/model/VariableValue;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const-string v0, "NextURIMetaData"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    iget-object v0, v0, Lorg/teleal/cling/model/VariableValue;->b:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const-string v0, "NrTracks"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    iget-object v0, v0, Lorg/teleal/cling/model/VariableValue;->b:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-string v0, "MediaDuration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    iget-object v0, v0, Lorg/teleal/cling/model/VariableValue;->b:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    const-string v0, "PlayMedium"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    iget-object v0, v0, Lorg/teleal/cling/model/VariableValue;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/teleal/cling/support/model/StorageMedium;->a(Ljava/lang/String;)Lorg/teleal/cling/support/model/StorageMedium;

    move-result-object v8

    const-string v0, "RecordMedium"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    iget-object v0, v0, Lorg/teleal/cling/model/VariableValue;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/teleal/cling/support/model/StorageMedium;->a(Ljava/lang/String;)Lorg/teleal/cling/support/model/StorageMedium;

    move-result-object v9

    const-string v0, "WriteStatus"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/teleal/cling/model/action/ActionArgumentValue;

    iget-object p1, p1, Lorg/teleal/cling/model/VariableValue;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, p0

    move-object v10, p1

    goto :goto_1

    :catch_0
    sget-object p1, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;->UNKNOWN:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    goto :goto_0

    :goto_1
    invoke-direct/range {v1 .. v10}, Lorg/teleal/cling/support/model/MediaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/teleal/cling/support/model/StorageMedium;Lorg/teleal/cling/support/model/StorageMedium;Lorg/teleal/cling/support/model/RecordMediumWriteStatus;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaInfo [currentURI="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/teleal/cling/support/model/MediaInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currentURIMetaData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/teleal/cling/support/model/MediaInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nextURI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/teleal/cling/support/model/MediaInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nextURIMetaData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/teleal/cling/support/model/MediaInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", numberOfTracks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/teleal/cling/support/model/MediaInfo;->e:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/teleal/cling/support/model/MediaInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", playMedium="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/teleal/cling/support/model/MediaInfo;->g:Lorg/teleal/cling/support/model/StorageMedium;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", recordMedium="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/teleal/cling/support/model/MediaInfo;->h:Lorg/teleal/cling/support/model/StorageMedium;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", writeStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/teleal/cling/support/model/MediaInfo;->i:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
