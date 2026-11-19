package com.linkplay.medialib;

import android.app.Application;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore;
import android.text.TextUtils;
import com.linkplay.lpmdpkit.LPMDPKitManager;
import com.linkplay.lpmdpkit.LPPlaySourceType;
import com.linkplay.lpmdpkit.bean.LPAccount;
import com.linkplay.lpmdpkit.bean.LPPlayHeader;
import com.linkplay.lpmdpkit.bean.LPPlayMusicList;
import com.linkplay.medialib.server.MediaServer;
import defpackage.n00;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import org.teleal.cling.support.model.DIDLObject;
import org.teleal.cling.support.model.PersonWithRole;
import org.teleal.cling.support.model.Res;
import org.teleal.cling.support.model.WriteStatus;
import org.teleal.cling.support.model.container.Container;
import org.teleal.cling.support.model.item.MusicTrack;
import org.teleal.common.util.MimeType;

/* JADX INFO: loaded from: classes2.dex */
public class LPMSLibraryManager {
    private static LPMSLibraryManager instance;
    private Application application;

    private LPMSLibraryManager(Application application) {
        this.application = application;
        LPMDPKitManager.getInstance().addStreamServiceProtocol(new LPMSLibraryProtocol());
    }

    private long getAlbumIDByAlbum(LPMSLibraryPlayItem lPMSLibraryPlayItem) {
        String[] strArr = {lPMSLibraryPlayItem.getTrackName(), String.valueOf(lPMSLibraryPlayItem.getTrackDuration())};
        Cursor cursorQuery = this.application.getApplicationContext().getContentResolver().query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, new String[]{"album_id"}, "title=? and duration=?", strArr, "title_key");
        long j2 = 0;
        if (cursorQuery != null) {
            if (cursorQuery.getCount() > 0 && cursorQuery.getColumnCount() > 0) {
                cursorQuery.moveToFirst();
                j2 = Long.parseLong(cursorQuery.getString(0));
            }
            cursorQuery.close();
        }
        return j2;
    }

    private static String[] getCurrDir(String str) {
        if (str != null && str.length() > 0) {
            String str2 = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator;
            if (str.contains(str2)) {
                str = str.replace(str2, "");
            }
            if (!TextUtils.isEmpty(str)) {
                return str.split("/");
            }
        }
        return null;
    }

    private String getFileDir(String str) {
        int iLastIndexOf;
        if (str == null || str.length() <= 0 || (iLastIndexOf = str.lastIndexOf("/")) == -1) {
            return "";
        }
        String strSubstring = str.substring(0, iLastIndexOf);
        return strSubstring.length() <= 0 ? "" : strSubstring;
    }

    private String getFolderName(String str) {
        int iLastIndexOf;
        int iLastIndexOf2;
        if (str == null || str.length() <= 0 || (iLastIndexOf = str.lastIndexOf("/")) == -1) {
            return "";
        }
        String strSubstring = str.substring(0, iLastIndexOf);
        if (strSubstring.length() <= 0 || (iLastIndexOf2 = strSubstring.lastIndexOf("/")) == -1) {
            return "";
        }
        String strSubstring2 = strSubstring.substring(iLastIndexOf2 + 1);
        return strSubstring2.length() <= 0 ? "" : strSubstring2;
    }

    private String getGenreName(int i2) {
        String str = "unknown";
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = this.application.getContentResolver().query(MediaStore.Audio.Genres.getContentUriForAudioId("external", i2), new String[]{"_id", "name"}, null, null, null);
                if (cursorQuery != null && cursorQuery.moveToNext()) {
                    String string = cursorQuery.getString(cursorQuery.getColumnIndex("name"));
                    if (!TextUtils.isEmpty(string.trim())) {
                        str = string;
                    }
                }
                return str;
            } catch (Exception e2) {
                e2.printStackTrace();
                return "unknown";
            }
        } finally {
            cursorQuery.close();
        }
    }

    private LPMSLibraryPlayItem getImageFromLocal(LPMSLibraryPlayItem lPMSLibraryPlayItem) {
        if (lPMSLibraryPlayItem == null || TextUtils.isEmpty(lPMSLibraryPlayItem.getTrackName())) {
            return null;
        }
        try {
            long albumIDByAlbum = getAlbumIDByAlbum(lPMSLibraryPlayItem);
            lPMSLibraryPlayItem.setAlbumId(albumIDByAlbum + "");
            lPMSLibraryPlayItem.setTrackImage(getAlbumArt(albumIDByAlbum));
            return lPMSLibraryPlayItem;
        } catch (Exception e2) {
            e2.printStackTrace();
            return lPMSLibraryPlayItem;
        }
    }

    public static LPMSLibraryManager getInstance(Application application) {
        if (instance == null) {
            synchronized (LPMSLibraryManager.class) {
                try {
                    if (instance == null) {
                        instance = new LPMSLibraryManager(application);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    private String getLocalIPUrl(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer("");
        if (!str2.startsWith(FinalDataUtil.HTTP_HEAD)) {
            stringBuffer.append(FinalDataUtil.HTTP_HEAD);
            stringBuffer.append(str + ":" + MediaServer.port);
            stringBuffer.append(str2);
        }
        return stringBuffer.toString();
    }

    private boolean isSupportedMimeType(String str) {
        if (str == null) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        return (!lowerCase.contains("audio") || lowerCase.contains("mid") || lowerCase.contains("basic") || lowerCase.contains("aiff") || lowerCase.contains("real") || lowerCase.contains("scpls") || lowerCase.contains("musicnet") || lowerCase.contains("liquid")) ? false : true;
    }

    private boolean isSupportedSubType(String str) {
        if (str == null) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        return lowerCase.contains("aac") || lowerCase.contains("m4a") || lowerCase.contains("mp3") || lowerCase.contains("flac") || lowerCase.contains("ape") || lowerCase.contains("wma") || lowerCase.contains("mpeg") || lowerCase.contains("mp4") || lowerCase.contains("ogg") || lowerCase.contains("wav") || lowerCase.contains("monkeys");
    }

    private void search(final LPPlayHeader lPPlayHeader, final ELocSearchType eLocSearchType, final LPSearchMediaResultListener lPSearchMediaResultListener) {
        if (lPPlayHeader == null) {
            lPPlayHeader = new LPPlayHeader();
        }
        if (lPPlayHeader.getCurrentPage() < 1) {
            lPPlayHeader.setCurrentPage(1);
        } else {
            lPPlayHeader.setCurrentPage(lPPlayHeader.getCurrentPage());
        }
        lPPlayHeader.setPerPage(lPPlayHeader.getPerPage());
        lPPlayHeader.setMediaType("SONGLIST-LOCAL");
        lPPlayHeader.setMediaSource(LPPlaySourceType.LP_LOCALMUSIC);
        new Thread(new Runnable() { // from class: com.linkplay.medialib.LPMSLibraryManager.2
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                Collection collectionSearchAudios = LPMSLibraryManager.this.searchAudios(new MusicSplitPageItem(true, lPPlayHeader.getPerPage(), lPPlayHeader.getCurrentPage(), eLocSearchType));
                if (lPSearchMediaResultListener != null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(collectionSearchAudios);
                    LPPlayMusicList lPPlayMusicList = new LPPlayMusicList();
                    lPPlayMusicList.setHeader(lPPlayHeader);
                    lPPlayMusicList.setList(arrayList);
                    lPSearchMediaResultListener.success(lPPlayMusicList);
                }
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:104:0x024a A[Catch: all -> 0x01dd, Exception -> 0x0391, TryCatch #8 {all -> 0x01dd, blocks: (B:66:0x01c5, B:68:0x01d2, B:83:0x01fe, B:102:0x0244, B:104:0x024a, B:108:0x02e3, B:112:0x02ef, B:116:0x0323, B:118:0x0342, B:120:0x034c, B:122:0x0358, B:127:0x0368, B:129:0x0379, B:131:0x038a, B:87:0x020c, B:90:0x0217, B:92:0x0221, B:94:0x0228), top: B:165:0x01c5 }] */
    /* JADX WARN: Code duplicated, block: B:106:0x02df  */
    /* JADX WARN: Code duplicated, block: B:107:0x02e1  */
    /* JADX WARN: Code duplicated, block: B:110:0x02eb  */
    /* JADX WARN: Code duplicated, block: B:111:0x02ed  */
    /* JADX WARN: Code duplicated, block: B:114:0x031f  */
    /* JADX WARN: Code duplicated, block: B:115:0x0321  */
    /* JADX WARN: Code duplicated, block: B:120:0x034c A[Catch: all -> 0x01dd, Exception -> 0x0235, TryCatch #4 {Exception -> 0x0235, blocks: (B:118:0x0342, B:120:0x034c, B:122:0x0358, B:129:0x0379, B:94:0x0228), top: B:161:0x0342 }] */
    /* JADX WARN: Code duplicated, block: B:126:0x0366  */
    /* JADX WARN: Code duplicated, block: B:129:0x0379 A[Catch: all -> 0x01dd, Exception -> 0x0235, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x0235, blocks: (B:118:0x0342, B:120:0x034c, B:122:0x0358, B:129:0x0379, B:94:0x0228), top: B:161:0x0342 }] */
    /* JADX WARN: Code duplicated, block: B:137:0x0396  */
    /* JADX WARN: Code duplicated, block: B:146:0x03b5  */
    /* JADX WARN: Code duplicated, block: B:159:0x0217 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:161:0x0342 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:22:0x009d  */
    /* JADX WARN: Code duplicated, block: B:76:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:83:0x01fe A[Catch: all -> 0x01dd, Exception -> 0x01e4, TRY_ENTER, TryCatch #7 {Exception -> 0x01e4, blocks: (B:66:0x01c5, B:83:0x01fe, B:87:0x020c), top: B:165:0x01c5 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x020c A[Catch: all -> 0x01dd, Exception -> 0x01e4, TRY_LEAVE, TryCatch #7 {Exception -> 0x01e4, blocks: (B:66:0x01c5, B:83:0x01fe, B:87:0x020c), top: B:165:0x01c5 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x0221 A[Catch: all -> 0x01dd, Exception -> 0x023c, TRY_LEAVE, TryCatch #3 {Exception -> 0x023c, blocks: (B:90:0x0217, B:92:0x0221), top: B:159:0x0217 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:104:0x024a, please report this as an issue */
    public Collection<LPMSLibraryPlayItem> searchAudios(MusicSplitPageItem musicSplitPageItem) throws Throwable {
        String strR;
        String str;
        HashMap map;
        Cursor cursor;
        long j2;
        String strSubstring;
        String strSubstring2;
        int iLastIndexOf;
        String strSubstring3;
        String string;
        int i2;
        LPMSLibraryPlayItem lPMSLibraryPlayItem;
        String str2;
        String str3;
        String str4;
        String str5;
        HashMap map2 = new HashMap();
        if (musicSplitPageItem == null) {
            return map2.values();
        }
        ContentNode rootNode = ContentTree.getRootNode();
        Container container = new Container(ContentTree.AUDIO_ID, ContentTree.ROOT_ID, "Audios", "GNaP MediaServer", new DIDLObject.Class("object.container"), (Integer) 0);
        int i3 = 1;
        container.f78572e = true;
        container.f78573f = WriteStatus.NOT_WRITABLE;
        String[] strArr = {"_id", "title", "_data", "artist", "mime_type", "_size", "duration", "album", "album_id", "track", "artist_id"};
        ELocSearchType eLocSearchType = musicSplitPageItem.classify;
        Cursor cursorQuery = null;
        if (eLocSearchType == ELocSearchType.LP_ALBUM) {
            if (musicSplitPageItem.shouldExecuteSearchKey) {
                strR = n00.r(musicSplitPageItem.searchKey, "' ", new StringBuilder("album= '"));
                str = strR;
            } else {
                str = null;
            }
        } else if (eLocSearchType == ELocSearchType.LP_ARTIST) {
            if (musicSplitPageItem.shouldExecuteSearchKey) {
                strR = n00.r(musicSplitPageItem.searchKey, "' ", new StringBuilder("artist= '"));
                str = strR;
            } else {
                str = null;
            }
        } else if (eLocSearchType == ELocSearchType.LP_SONGS && musicSplitPageItem.shouldExecuteSearchKey) {
            strR = n00.r(musicSplitPageItem.searchKey, ")", new StringBuilder("_id IN ("));
            str = strR;
        } else {
            str = null;
        }
        try {
            try {
                cursorQuery = this.application.getContentResolver().query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, strArr, str, null, "_id desc");
                if (cursorQuery != null) {
                    while (cursorQuery.moveToNext()) {
                        try {
                            try {
                                int i4 = cursorQuery.getInt(cursorQuery.getColumnIndex("artist_id"));
                                String str6 = ContentTree.AUDIO_PREFIX + cursorQuery.getInt(cursorQuery.getColumnIndex("_id"));
                                String string2 = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("title"));
                                String string3 = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("album"));
                                String string4 = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("artist"));
                                String string5 = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                                if (musicSplitPageItem.classify == ELocSearchType.LP_ALBUM && !musicSplitPageItem.shouldExecuteSearchKey) {
                                    Iterator it = map2.values().iterator();
                                    while (true) {
                                        if (it.hasNext()) {
                                            if (TextUtils.equals(((LPMSLibraryPlayItem) it.next()).getAlbumName(), string3)) {
                                            }
                                        }
                                    }
                                }
                                if (musicSplitPageItem.classify == ELocSearchType.LP_ARTIST && !musicSplitPageItem.shouldExecuteSearchKey) {
                                    Iterator it2 = map2.values().iterator();
                                    while (true) {
                                        if (it2.hasNext()) {
                                            LPMSLibraryPlayItem lPMSLibraryPlayItem2 = (LPMSLibraryPlayItem) it2.next();
                                            int i5 = i3;
                                            if (TextUtils.equals(lPMSLibraryPlayItem2.getTrackArtist(), string4)) {
                                                lPMSLibraryPlayItem2.setSongCount(lPMSLibraryPlayItem2.getSongCount() + 1);
                                                i3 = i5;
                                            } else {
                                                i3 = i5;
                                            }
                                        }
                                    }
                                }
                                int i6 = i3;
                                String string6 = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("mime_type"));
                                long j3 = cursorQuery.getLong(cursorQuery.getColumnIndexOrThrow("_size"));
                                long j4 = cursorQuery.getLong(cursorQuery.getColumnIndexOrThrow("duration"));
                                String string7 = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("album_id"));
                                rootNode = rootNode;
                                String string8 = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("track"));
                                if (j4 > 0 && j3 > 0) {
                                    if (string6 != null) {
                                        try {
                                            if (string6.contains("/")) {
                                                cursor = cursorQuery;
                                                try {
                                                    try {
                                                        j2 = j4;
                                                        strSubstring = string6.substring(0, string6.indexOf("/"));
                                                        try {
                                                            strSubstring2 = string6.substring(string6.indexOf(47) + 1);
                                                        } catch (Exception unused) {
                                                            strSubstring2 = "";
                                                        }
                                                        try {
                                                            if (string6 != null || !string6.contains("audio")) {
                                                                iLastIndexOf = string5.lastIndexOf(com.sightcall.universal.media.offline.FileUtils.HIDDEN_PREFIX);
                                                                if (iLastIndexOf > -1) {
                                                                    try {
                                                                        strSubstring3 = string5.substring(iLastIndexOf);
                                                                        if (isSupportedSubType(strSubstring3)) {
                                                                            StringBuilder sb = new StringBuilder();
                                                                            map2 = map2;
                                                                            sb.append("audio/");
                                                                            sb.append(strSubstring3);
                                                                            string = sb.toString();
                                                                        }
                                                                        if (isSupportedMimeType(string)) {
                                                                            Res res = new Res(new MimeType(strSubstring, strSubstring2), Long.valueOf(j3), "http://#IP_Param#" + str6);
                                                                            res.f78597a = (j2 / 3600000) + ":" + ((j2 % 3600000) / 60000) + ":" + ((j2 % 60000) / 1000);
                                                                            long j5 = j2;
                                                                            MusicTrack musicTrack = new MusicTrack(str6, ContentTree.AUDIO_ID, string2, string4, string3, new PersonWithRole(string4, "Performer"), res);
                                                                            rootNode.getContainer().o.add(musicTrack);
                                                                            rootNode.getContainer().f78601k = Integer.valueOf(rootNode.getContainer().f78601k.intValue() + 1);
                                                                            ContentTree.addNode(str6, new ContentNode(str6, musicTrack, string5));
                                                                            lPMSLibraryPlayItem = new LPMSLibraryPlayItem();
                                                                            if (string3 == null) {
                                                                                str2 = "";
                                                                            } else {
                                                                                str2 = string3;
                                                                            }
                                                                            lPMSLibraryPlayItem.setAlbumName(str2);
                                                                            lPMSLibraryPlayItem.setTrackImage("");
                                                                            if (string4 == null) {
                                                                                str3 = "";
                                                                            } else {
                                                                                str3 = string4;
                                                                            }
                                                                            lPMSLibraryPlayItem.setTrackArtist(str3);
                                                                            lPMSLibraryPlayItem.setTrackUrl(FinalDataUtil.HTTP_HEAD + FinalDataUtil.makeIPV4IP(this.application) + ":" + MediaServer.port + "/" + str6);
                                                                            lPMSLibraryPlayItem.setLocal_id(str6);
                                                                            if (string2 == null) {
                                                                                str4 = "";
                                                                            } else {
                                                                                str4 = string2;
                                                                            }
                                                                            lPMSLibraryPlayItem.setTrackName(str4);
                                                                            lPMSLibraryPlayItem.setTrackDuration((int) j5);
                                                                            lPMSLibraryPlayItem.setArtistId(i4 + "");
                                                                            lPMSLibraryPlayItem.setAlbumId(string7);
                                                                            if (string8 == null) {
                                                                                try {
                                                                                    if (string8.trim().length() != 0 || string8.trim().equals(ContentTree.ROOT_ID) || string8.trim().equals("")) {
                                                                                        str5 = "2147483647";
                                                                                    } else {
                                                                                        str5 = string8;
                                                                                    }
                                                                                } catch (Exception e2) {
                                                                                    e = e2;
                                                                                    cursorQuery = cursor;
                                                                                    map = map2;
                                                                                    e.printStackTrace();
                                                                                    if (cursorQuery != null) {
                                                                                        cursorQuery.close();
                                                                                    }
                                                                                    return map.values();
                                                                                }
                                                                            } else {
                                                                                str5 = "2147483647";
                                                                            }
                                                                            lPMSLibraryPlayItem.setTrack(str5);
                                                                            lPMSLibraryPlayItem.setTrackId(str6);
                                                                            i2 = i6;
                                                                            lPMSLibraryPlayItem.setSongCount(i2);
                                                                            if (musicSplitPageItem.classify == ELocSearchType.LP_GENRE) {
                                                                                lPMSLibraryPlayItem.setGenreName(getGenreName(Integer.parseInt(str6.replaceAll(ContentTree.AUDIO_PREFIX, ""))));
                                                                            }
                                                                            map = map2;
                                                                            try {
                                                                                map.put(str6, lPMSLibraryPlayItem);
                                                                            } catch (Exception e3) {
                                                                                e = e3;
                                                                                cursorQuery = cursor;
                                                                                e.printStackTrace();
                                                                                if (cursorQuery != null) {
                                                                                    cursorQuery.close();
                                                                                }
                                                                                return map.values();
                                                                            }
                                                                        } else {
                                                                            i2 = i6;
                                                                            map = map2;
                                                                        }
                                                                        i3 = i2;
                                                                        map2 = map;
                                                                        cursorQuery = cursor;
                                                                    } catch (Exception e4) {
                                                                        e = e4;
                                                                        map2 = map2;
                                                                        cursorQuery = cursor;
                                                                        map = map2;
                                                                        e.printStackTrace();
                                                                        if (cursorQuery != null) {
                                                                            cursorQuery.close();
                                                                        }
                                                                        return map.values();
                                                                    }
                                                                }
                                                            }
                                                            if (isSupportedMimeType(string)) {
                                                                Res res2 = new Res(new MimeType(strSubstring, strSubstring2), Long.valueOf(j3), "http://#IP_Param#" + str6);
                                                                res2.f78597a = (j2 / 3600000) + ":" + ((j2 % 3600000) / 60000) + ":" + ((j2 % 60000) / 1000);
                                                                long j6 = j2;
                                                                MusicTrack musicTrack2 = new MusicTrack(str6, ContentTree.AUDIO_ID, string2, string4, string3, new PersonWithRole(string4, "Performer"), res2);
                                                                rootNode.getContainer().o.add(musicTrack2);
                                                                rootNode.getContainer().f78601k = Integer.valueOf(rootNode.getContainer().f78601k.intValue() + 1);
                                                                ContentTree.addNode(str6, new ContentNode(str6, musicTrack2, string5));
                                                                lPMSLibraryPlayItem = new LPMSLibraryPlayItem();
                                                                if (string3 == null) {
                                                                    str2 = "";
                                                                } else {
                                                                    str2 = string3;
                                                                }
                                                                lPMSLibraryPlayItem.setAlbumName(str2);
                                                                lPMSLibraryPlayItem.setTrackImage("");
                                                                if (string4 == null) {
                                                                    str3 = "";
                                                                } else {
                                                                    str3 = string4;
                                                                }
                                                                lPMSLibraryPlayItem.setTrackArtist(str3);
                                                                lPMSLibraryPlayItem.setTrackUrl(FinalDataUtil.HTTP_HEAD + FinalDataUtil.makeIPV4IP(this.application) + ":" + MediaServer.port + "/" + str6);
                                                                lPMSLibraryPlayItem.setLocal_id(str6);
                                                                if (string2 == null) {
                                                                    str4 = "";
                                                                } else {
                                                                    str4 = string2;
                                                                }
                                                                lPMSLibraryPlayItem.setTrackName(str4);
                                                                lPMSLibraryPlayItem.setTrackDuration((int) j6);
                                                                lPMSLibraryPlayItem.setArtistId(i4 + "");
                                                                lPMSLibraryPlayItem.setAlbumId(string7);
                                                                if (string8 == null) {
                                                                    str5 = "2147483647";
                                                                } else if (string8.trim().length() != 0) {
                                                                    str5 = "2147483647";
                                                                } else {
                                                                    str5 = "2147483647";
                                                                }
                                                                lPMSLibraryPlayItem.setTrack(str5);
                                                                lPMSLibraryPlayItem.setTrackId(str6);
                                                                i2 = i6;
                                                                lPMSLibraryPlayItem.setSongCount(i2);
                                                                if (musicSplitPageItem.classify == ELocSearchType.LP_GENRE) {
                                                                    lPMSLibraryPlayItem.setGenreName(getGenreName(Integer.parseInt(str6.replaceAll(ContentTree.AUDIO_PREFIX, ""))));
                                                                }
                                                                map = map2;
                                                                map.put(str6, lPMSLibraryPlayItem);
                                                            } else {
                                                                i2 = i6;
                                                                map = map2;
                                                            }
                                                            i3 = i2;
                                                            map2 = map;
                                                            cursorQuery = cursor;
                                                        } catch (Exception e5) {
                                                            e = e5;
                                                            map = map2;
                                                        }
                                                        string = string6;
                                                    } catch (Exception e6) {
                                                        e = e6;
                                                        map = map2;
                                                        cursorQuery = cursor;
                                                        e.printStackTrace();
                                                        if (cursorQuery != null) {
                                                            cursorQuery.close();
                                                        }
                                                        return map.values();
                                                    }
                                                } catch (Throwable th) {
                                                    th = th;
                                                    cursorQuery = cursor;
                                                    if (cursorQuery != null) {
                                                        cursorQuery.close();
                                                    }
                                                    throw th;
                                                }
                                            } else {
                                                cursor = cursorQuery;
                                                j2 = j4;
                                                strSubstring = string6;
                                            }
                                            strSubstring2 = "";
                                            if (string6 != null) {
                                                iLastIndexOf = string5.lastIndexOf(com.sightcall.universal.media.offline.FileUtils.HIDDEN_PREFIX);
                                                if (iLastIndexOf > -1) {
                                                    strSubstring3 = string5.substring(iLastIndexOf);
                                                    if (isSupportedSubType(strSubstring3)) {
                                                        StringBuilder sb2 = new StringBuilder();
                                                        map2 = map2;
                                                        sb2.append("audio/");
                                                        sb2.append(strSubstring3);
                                                        string = sb2.toString();
                                                    }
                                                    if (isSupportedMimeType(string)) {
                                                        Res res3 = new Res(new MimeType(strSubstring, strSubstring2), Long.valueOf(j3), "http://#IP_Param#" + str6);
                                                        res3.f78597a = (j2 / 3600000) + ":" + ((j2 % 3600000) / 60000) + ":" + ((j2 % 60000) / 1000);
                                                        long j7 = j2;
                                                        MusicTrack musicTrack3 = new MusicTrack(str6, ContentTree.AUDIO_ID, string2, string4, string3, new PersonWithRole(string4, "Performer"), res3);
                                                        rootNode.getContainer().o.add(musicTrack3);
                                                        rootNode.getContainer().f78601k = Integer.valueOf(rootNode.getContainer().f78601k.intValue() + 1);
                                                        ContentTree.addNode(str6, new ContentNode(str6, musicTrack3, string5));
                                                        lPMSLibraryPlayItem = new LPMSLibraryPlayItem();
                                                        if (string3 == null) {
                                                            str2 = "";
                                                        } else {
                                                            str2 = string3;
                                                        }
                                                        lPMSLibraryPlayItem.setAlbumName(str2);
                                                        lPMSLibraryPlayItem.setTrackImage("");
                                                        if (string4 == null) {
                                                            str3 = "";
                                                        } else {
                                                            str3 = string4;
                                                        }
                                                        lPMSLibraryPlayItem.setTrackArtist(str3);
                                                        lPMSLibraryPlayItem.setTrackUrl(FinalDataUtil.HTTP_HEAD + FinalDataUtil.makeIPV4IP(this.application) + ":" + MediaServer.port + "/" + str6);
                                                        lPMSLibraryPlayItem.setLocal_id(str6);
                                                        if (string2 == null) {
                                                            str4 = "";
                                                        } else {
                                                            str4 = string2;
                                                        }
                                                        lPMSLibraryPlayItem.setTrackName(str4);
                                                        lPMSLibraryPlayItem.setTrackDuration((int) j7);
                                                        lPMSLibraryPlayItem.setArtistId(i4 + "");
                                                        lPMSLibraryPlayItem.setAlbumId(string7);
                                                        if (string8 == null) {
                                                            str5 = "2147483647";
                                                        } else if (string8.trim().length() != 0) {
                                                            str5 = "2147483647";
                                                        } else {
                                                            str5 = "2147483647";
                                                        }
                                                        lPMSLibraryPlayItem.setTrack(str5);
                                                        lPMSLibraryPlayItem.setTrackId(str6);
                                                        i2 = i6;
                                                        lPMSLibraryPlayItem.setSongCount(i2);
                                                        if (musicSplitPageItem.classify == ELocSearchType.LP_GENRE) {
                                                            lPMSLibraryPlayItem.setGenreName(getGenreName(Integer.parseInt(str6.replaceAll(ContentTree.AUDIO_PREFIX, ""))));
                                                        }
                                                        map = map2;
                                                        map.put(str6, lPMSLibraryPlayItem);
                                                    } else {
                                                        i2 = i6;
                                                        map = map2;
                                                    }
                                                    i3 = i2;
                                                    map2 = map;
                                                    cursorQuery = cursor;
                                                }
                                                string = string6;
                                                if (isSupportedMimeType(string)) {
                                                    Res res4 = new Res(new MimeType(strSubstring, strSubstring2), Long.valueOf(j3), "http://#IP_Param#" + str6);
                                                    res4.f78597a = (j2 / 3600000) + ":" + ((j2 % 3600000) / 60000) + ":" + ((j2 % 60000) / 1000);
                                                    long j8 = j2;
                                                    MusicTrack musicTrack4 = new MusicTrack(str6, ContentTree.AUDIO_ID, string2, string4, string3, new PersonWithRole(string4, "Performer"), res4);
                                                    rootNode.getContainer().o.add(musicTrack4);
                                                    rootNode.getContainer().f78601k = Integer.valueOf(rootNode.getContainer().f78601k.intValue() + 1);
                                                    ContentTree.addNode(str6, new ContentNode(str6, musicTrack4, string5));
                                                    lPMSLibraryPlayItem = new LPMSLibraryPlayItem();
                                                    if (string3 == null) {
                                                        str2 = "";
                                                    } else {
                                                        str2 = string3;
                                                    }
                                                    lPMSLibraryPlayItem.setAlbumName(str2);
                                                    lPMSLibraryPlayItem.setTrackImage("");
                                                    if (string4 == null) {
                                                        str3 = "";
                                                    } else {
                                                        str3 = string4;
                                                    }
                                                    lPMSLibraryPlayItem.setTrackArtist(str3);
                                                    lPMSLibraryPlayItem.setTrackUrl(FinalDataUtil.HTTP_HEAD + FinalDataUtil.makeIPV4IP(this.application) + ":" + MediaServer.port + "/" + str6);
                                                    lPMSLibraryPlayItem.setLocal_id(str6);
                                                    if (string2 == null) {
                                                        str4 = "";
                                                    } else {
                                                        str4 = string2;
                                                    }
                                                    lPMSLibraryPlayItem.setTrackName(str4);
                                                    lPMSLibraryPlayItem.setTrackDuration((int) j8);
                                                    lPMSLibraryPlayItem.setArtistId(i4 + "");
                                                    lPMSLibraryPlayItem.setAlbumId(string7);
                                                    if (string8 == null) {
                                                        str5 = "2147483647";
                                                    } else if (string8.trim().length() != 0) {
                                                        str5 = "2147483647";
                                                    } else {
                                                        str5 = "2147483647";
                                                    }
                                                    lPMSLibraryPlayItem.setTrack(str5);
                                                    lPMSLibraryPlayItem.setTrackId(str6);
                                                    i2 = i6;
                                                    lPMSLibraryPlayItem.setSongCount(i2);
                                                    if (musicSplitPageItem.classify == ELocSearchType.LP_GENRE) {
                                                        lPMSLibraryPlayItem.setGenreName(getGenreName(Integer.parseInt(str6.replaceAll(ContentTree.AUDIO_PREFIX, ""))));
                                                    }
                                                    map = map2;
                                                    map.put(str6, lPMSLibraryPlayItem);
                                                } else {
                                                    i2 = i6;
                                                    map = map2;
                                                }
                                                i3 = i2;
                                                map2 = map;
                                                cursorQuery = cursor;
                                            } else {
                                                iLastIndexOf = string5.lastIndexOf(com.sightcall.universal.media.offline.FileUtils.HIDDEN_PREFIX);
                                                if (iLastIndexOf > -1) {
                                                    strSubstring3 = string5.substring(iLastIndexOf);
                                                    if (isSupportedSubType(strSubstring3)) {
                                                        StringBuilder sb3 = new StringBuilder();
                                                        map2 = map2;
                                                        sb3.append("audio/");
                                                        sb3.append(strSubstring3);
                                                        string = sb3.toString();
                                                    }
                                                    if (isSupportedMimeType(string)) {
                                                        Res res5 = new Res(new MimeType(strSubstring, strSubstring2), Long.valueOf(j3), "http://#IP_Param#" + str6);
                                                        res5.f78597a = (j2 / 3600000) + ":" + ((j2 % 3600000) / 60000) + ":" + ((j2 % 60000) / 1000);
                                                        long j9 = j2;
                                                        MusicTrack musicTrack5 = new MusicTrack(str6, ContentTree.AUDIO_ID, string2, string4, string3, new PersonWithRole(string4, "Performer"), res5);
                                                        rootNode.getContainer().o.add(musicTrack5);
                                                        rootNode.getContainer().f78601k = Integer.valueOf(rootNode.getContainer().f78601k.intValue() + 1);
                                                        ContentTree.addNode(str6, new ContentNode(str6, musicTrack5, string5));
                                                        lPMSLibraryPlayItem = new LPMSLibraryPlayItem();
                                                        if (string3 == null) {
                                                            str2 = "";
                                                        } else {
                                                            str2 = string3;
                                                        }
                                                        lPMSLibraryPlayItem.setAlbumName(str2);
                                                        lPMSLibraryPlayItem.setTrackImage("");
                                                        if (string4 == null) {
                                                            str3 = "";
                                                        } else {
                                                            str3 = string4;
                                                        }
                                                        lPMSLibraryPlayItem.setTrackArtist(str3);
                                                        lPMSLibraryPlayItem.setTrackUrl(FinalDataUtil.HTTP_HEAD + FinalDataUtil.makeIPV4IP(this.application) + ":" + MediaServer.port + "/" + str6);
                                                        lPMSLibraryPlayItem.setLocal_id(str6);
                                                        if (string2 == null) {
                                                            str4 = "";
                                                        } else {
                                                            str4 = string2;
                                                        }
                                                        lPMSLibraryPlayItem.setTrackName(str4);
                                                        lPMSLibraryPlayItem.setTrackDuration((int) j9);
                                                        lPMSLibraryPlayItem.setArtistId(i4 + "");
                                                        lPMSLibraryPlayItem.setAlbumId(string7);
                                                        if (string8 == null) {
                                                            str5 = "2147483647";
                                                        } else if (string8.trim().length() != 0) {
                                                            str5 = "2147483647";
                                                        } else {
                                                            str5 = "2147483647";
                                                        }
                                                        lPMSLibraryPlayItem.setTrack(str5);
                                                        lPMSLibraryPlayItem.setTrackId(str6);
                                                        i2 = i6;
                                                        lPMSLibraryPlayItem.setSongCount(i2);
                                                        if (musicSplitPageItem.classify == ELocSearchType.LP_GENRE) {
                                                            lPMSLibraryPlayItem.setGenreName(getGenreName(Integer.parseInt(str6.replaceAll(ContentTree.AUDIO_PREFIX, ""))));
                                                        }
                                                        map = map2;
                                                        map.put(str6, lPMSLibraryPlayItem);
                                                    } else {
                                                        i2 = i6;
                                                        map = map2;
                                                    }
                                                    i3 = i2;
                                                    map2 = map;
                                                    cursorQuery = cursor;
                                                }
                                                string = string6;
                                                if (isSupportedMimeType(string)) {
                                                    Res res6 = new Res(new MimeType(strSubstring, strSubstring2), Long.valueOf(j3), "http://#IP_Param#" + str6);
                                                    res6.f78597a = (j2 / 3600000) + ":" + ((j2 % 3600000) / 60000) + ":" + ((j2 % 60000) / 1000);
                                                    long j10 = j2;
                                                    MusicTrack musicTrack6 = new MusicTrack(str6, ContentTree.AUDIO_ID, string2, string4, string3, new PersonWithRole(string4, "Performer"), res6);
                                                    rootNode.getContainer().o.add(musicTrack6);
                                                    rootNode.getContainer().f78601k = Integer.valueOf(rootNode.getContainer().f78601k.intValue() + 1);
                                                    ContentTree.addNode(str6, new ContentNode(str6, musicTrack6, string5));
                                                    lPMSLibraryPlayItem = new LPMSLibraryPlayItem();
                                                    if (string3 == null) {
                                                        str2 = "";
                                                    } else {
                                                        str2 = string3;
                                                    }
                                                    lPMSLibraryPlayItem.setAlbumName(str2);
                                                    lPMSLibraryPlayItem.setTrackImage("");
                                                    if (string4 == null) {
                                                        str3 = "";
                                                    } else {
                                                        str3 = string4;
                                                    }
                                                    lPMSLibraryPlayItem.setTrackArtist(str3);
                                                    lPMSLibraryPlayItem.setTrackUrl(FinalDataUtil.HTTP_HEAD + FinalDataUtil.makeIPV4IP(this.application) + ":" + MediaServer.port + "/" + str6);
                                                    lPMSLibraryPlayItem.setLocal_id(str6);
                                                    if (string2 == null) {
                                                        str4 = "";
                                                    } else {
                                                        str4 = string2;
                                                    }
                                                    lPMSLibraryPlayItem.setTrackName(str4);
                                                    lPMSLibraryPlayItem.setTrackDuration((int) j10);
                                                    lPMSLibraryPlayItem.setArtistId(i4 + "");
                                                    lPMSLibraryPlayItem.setAlbumId(string7);
                                                    if (string8 == null) {
                                                        str5 = "2147483647";
                                                    } else if (string8.trim().length() != 0) {
                                                        str5 = "2147483647";
                                                    } else {
                                                        str5 = "2147483647";
                                                    }
                                                    lPMSLibraryPlayItem.setTrack(str5);
                                                    lPMSLibraryPlayItem.setTrackId(str6);
                                                    i2 = i6;
                                                    lPMSLibraryPlayItem.setSongCount(i2);
                                                    if (musicSplitPageItem.classify == ELocSearchType.LP_GENRE) {
                                                        lPMSLibraryPlayItem.setGenreName(getGenreName(Integer.parseInt(str6.replaceAll(ContentTree.AUDIO_PREFIX, ""))));
                                                    }
                                                    map = map2;
                                                    map.put(str6, lPMSLibraryPlayItem);
                                                } else {
                                                    i2 = i6;
                                                    map = map2;
                                                }
                                                i3 = i2;
                                                map2 = map;
                                                cursorQuery = cursor;
                                            }
                                        } catch (Exception e7) {
                                            e = e7;
                                            map = map2;
                                            e.printStackTrace();
                                            if (cursorQuery != null) {
                                                cursorQuery.close();
                                            }
                                            return map.values();
                                        }
                                    } else {
                                        cursor = cursorQuery;
                                        j2 = j4;
                                        strSubstring = string6;
                                        strSubstring2 = "";
                                        if (string6 != null) {
                                            iLastIndexOf = string5.lastIndexOf(com.sightcall.universal.media.offline.FileUtils.HIDDEN_PREFIX);
                                            if (iLastIndexOf > -1) {
                                                strSubstring3 = string5.substring(iLastIndexOf);
                                                if (isSupportedSubType(strSubstring3)) {
                                                    StringBuilder sb4 = new StringBuilder();
                                                    map2 = map2;
                                                    sb4.append("audio/");
                                                    sb4.append(strSubstring3);
                                                    string = sb4.toString();
                                                }
                                                if (isSupportedMimeType(string)) {
                                                    Res res7 = new Res(new MimeType(strSubstring, strSubstring2), Long.valueOf(j3), "http://#IP_Param#" + str6);
                                                    res7.f78597a = (j2 / 3600000) + ":" + ((j2 % 3600000) / 60000) + ":" + ((j2 % 60000) / 1000);
                                                    long j11 = j2;
                                                    MusicTrack musicTrack7 = new MusicTrack(str6, ContentTree.AUDIO_ID, string2, string4, string3, new PersonWithRole(string4, "Performer"), res7);
                                                    rootNode.getContainer().o.add(musicTrack7);
                                                    rootNode.getContainer().f78601k = Integer.valueOf(rootNode.getContainer().f78601k.intValue() + 1);
                                                    ContentTree.addNode(str6, new ContentNode(str6, musicTrack7, string5));
                                                    lPMSLibraryPlayItem = new LPMSLibraryPlayItem();
                                                    if (string3 == null) {
                                                        str2 = "";
                                                    } else {
                                                        str2 = string3;
                                                    }
                                                    lPMSLibraryPlayItem.setAlbumName(str2);
                                                    lPMSLibraryPlayItem.setTrackImage("");
                                                    if (string4 == null) {
                                                        str3 = "";
                                                    } else {
                                                        str3 = string4;
                                                    }
                                                    lPMSLibraryPlayItem.setTrackArtist(str3);
                                                    lPMSLibraryPlayItem.setTrackUrl(FinalDataUtil.HTTP_HEAD + FinalDataUtil.makeIPV4IP(this.application) + ":" + MediaServer.port + "/" + str6);
                                                    lPMSLibraryPlayItem.setLocal_id(str6);
                                                    if (string2 == null) {
                                                        str4 = "";
                                                    } else {
                                                        str4 = string2;
                                                    }
                                                    lPMSLibraryPlayItem.setTrackName(str4);
                                                    lPMSLibraryPlayItem.setTrackDuration((int) j11);
                                                    lPMSLibraryPlayItem.setArtistId(i4 + "");
                                                    lPMSLibraryPlayItem.setAlbumId(string7);
                                                    if (string8 == null) {
                                                        str5 = "2147483647";
                                                    } else if (string8.trim().length() != 0) {
                                                        str5 = "2147483647";
                                                    } else {
                                                        str5 = "2147483647";
                                                    }
                                                    lPMSLibraryPlayItem.setTrack(str5);
                                                    lPMSLibraryPlayItem.setTrackId(str6);
                                                    i2 = i6;
                                                    lPMSLibraryPlayItem.setSongCount(i2);
                                                    if (musicSplitPageItem.classify == ELocSearchType.LP_GENRE) {
                                                        lPMSLibraryPlayItem.setGenreName(getGenreName(Integer.parseInt(str6.replaceAll(ContentTree.AUDIO_PREFIX, ""))));
                                                    }
                                                    map = map2;
                                                    map.put(str6, lPMSLibraryPlayItem);
                                                } else {
                                                    i2 = i6;
                                                    map = map2;
                                                }
                                                i3 = i2;
                                                map2 = map;
                                                cursorQuery = cursor;
                                            }
                                            string = string6;
                                            if (isSupportedMimeType(string)) {
                                                Res res8 = new Res(new MimeType(strSubstring, strSubstring2), Long.valueOf(j3), "http://#IP_Param#" + str6);
                                                res8.f78597a = (j2 / 3600000) + ":" + ((j2 % 3600000) / 60000) + ":" + ((j2 % 60000) / 1000);
                                                long j12 = j2;
                                                MusicTrack musicTrack8 = new MusicTrack(str6, ContentTree.AUDIO_ID, string2, string4, string3, new PersonWithRole(string4, "Performer"), res8);
                                                rootNode.getContainer().o.add(musicTrack8);
                                                rootNode.getContainer().f78601k = Integer.valueOf(rootNode.getContainer().f78601k.intValue() + 1);
                                                ContentTree.addNode(str6, new ContentNode(str6, musicTrack8, string5));
                                                lPMSLibraryPlayItem = new LPMSLibraryPlayItem();
                                                if (string3 == null) {
                                                    str2 = "";
                                                } else {
                                                    str2 = string3;
                                                }
                                                lPMSLibraryPlayItem.setAlbumName(str2);
                                                lPMSLibraryPlayItem.setTrackImage("");
                                                if (string4 == null) {
                                                    str3 = "";
                                                } else {
                                                    str3 = string4;
                                                }
                                                lPMSLibraryPlayItem.setTrackArtist(str3);
                                                lPMSLibraryPlayItem.setTrackUrl(FinalDataUtil.HTTP_HEAD + FinalDataUtil.makeIPV4IP(this.application) + ":" + MediaServer.port + "/" + str6);
                                                lPMSLibraryPlayItem.setLocal_id(str6);
                                                if (string2 == null) {
                                                    str4 = "";
                                                } else {
                                                    str4 = string2;
                                                }
                                                lPMSLibraryPlayItem.setTrackName(str4);
                                                lPMSLibraryPlayItem.setTrackDuration((int) j12);
                                                lPMSLibraryPlayItem.setArtistId(i4 + "");
                                                lPMSLibraryPlayItem.setAlbumId(string7);
                                                if (string8 == null) {
                                                    str5 = "2147483647";
                                                } else if (string8.trim().length() != 0) {
                                                    str5 = "2147483647";
                                                } else {
                                                    str5 = "2147483647";
                                                }
                                                lPMSLibraryPlayItem.setTrack(str5);
                                                lPMSLibraryPlayItem.setTrackId(str6);
                                                i2 = i6;
                                                lPMSLibraryPlayItem.setSongCount(i2);
                                                if (musicSplitPageItem.classify == ELocSearchType.LP_GENRE) {
                                                    lPMSLibraryPlayItem.setGenreName(getGenreName(Integer.parseInt(str6.replaceAll(ContentTree.AUDIO_PREFIX, ""))));
                                                }
                                                map = map2;
                                                map.put(str6, lPMSLibraryPlayItem);
                                            } else {
                                                i2 = i6;
                                                map = map2;
                                            }
                                            i3 = i2;
                                            map2 = map;
                                            cursorQuery = cursor;
                                        } else {
                                            iLastIndexOf = string5.lastIndexOf(com.sightcall.universal.media.offline.FileUtils.HIDDEN_PREFIX);
                                            if (iLastIndexOf > -1) {
                                                strSubstring3 = string5.substring(iLastIndexOf);
                                                if (isSupportedSubType(strSubstring3)) {
                                                    StringBuilder sb5 = new StringBuilder();
                                                    map2 = map2;
                                                    sb5.append("audio/");
                                                    sb5.append(strSubstring3);
                                                    string = sb5.toString();
                                                }
                                                if (isSupportedMimeType(string)) {
                                                    Res res9 = new Res(new MimeType(strSubstring, strSubstring2), Long.valueOf(j3), "http://#IP_Param#" + str6);
                                                    res9.f78597a = (j2 / 3600000) + ":" + ((j2 % 3600000) / 60000) + ":" + ((j2 % 60000) / 1000);
                                                    long j13 = j2;
                                                    MusicTrack musicTrack9 = new MusicTrack(str6, ContentTree.AUDIO_ID, string2, string4, string3, new PersonWithRole(string4, "Performer"), res9);
                                                    rootNode.getContainer().o.add(musicTrack9);
                                                    rootNode.getContainer().f78601k = Integer.valueOf(rootNode.getContainer().f78601k.intValue() + 1);
                                                    ContentTree.addNode(str6, new ContentNode(str6, musicTrack9, string5));
                                                    lPMSLibraryPlayItem = new LPMSLibraryPlayItem();
                                                    if (string3 == null) {
                                                        str2 = "";
                                                    } else {
                                                        str2 = string3;
                                                    }
                                                    lPMSLibraryPlayItem.setAlbumName(str2);
                                                    lPMSLibraryPlayItem.setTrackImage("");
                                                    if (string4 == null) {
                                                        str3 = "";
                                                    } else {
                                                        str3 = string4;
                                                    }
                                                    lPMSLibraryPlayItem.setTrackArtist(str3);
                                                    lPMSLibraryPlayItem.setTrackUrl(FinalDataUtil.HTTP_HEAD + FinalDataUtil.makeIPV4IP(this.application) + ":" + MediaServer.port + "/" + str6);
                                                    lPMSLibraryPlayItem.setLocal_id(str6);
                                                    if (string2 == null) {
                                                        str4 = "";
                                                    } else {
                                                        str4 = string2;
                                                    }
                                                    lPMSLibraryPlayItem.setTrackName(str4);
                                                    lPMSLibraryPlayItem.setTrackDuration((int) j13);
                                                    lPMSLibraryPlayItem.setArtistId(i4 + "");
                                                    lPMSLibraryPlayItem.setAlbumId(string7);
                                                    if (string8 == null) {
                                                        str5 = "2147483647";
                                                    } else if (string8.trim().length() != 0) {
                                                        str5 = "2147483647";
                                                    } else {
                                                        str5 = "2147483647";
                                                    }
                                                    lPMSLibraryPlayItem.setTrack(str5);
                                                    lPMSLibraryPlayItem.setTrackId(str6);
                                                    i2 = i6;
                                                    lPMSLibraryPlayItem.setSongCount(i2);
                                                    if (musicSplitPageItem.classify == ELocSearchType.LP_GENRE) {
                                                        lPMSLibraryPlayItem.setGenreName(getGenreName(Integer.parseInt(str6.replaceAll(ContentTree.AUDIO_PREFIX, ""))));
                                                    }
                                                    map = map2;
                                                    map.put(str6, lPMSLibraryPlayItem);
                                                } else {
                                                    i2 = i6;
                                                    map = map2;
                                                }
                                                i3 = i2;
                                                map2 = map;
                                                cursorQuery = cursor;
                                            }
                                            string = string6;
                                            if (isSupportedMimeType(string)) {
                                                Res res10 = new Res(new MimeType(strSubstring, strSubstring2), Long.valueOf(j3), "http://#IP_Param#" + str6);
                                                res10.f78597a = (j2 / 3600000) + ":" + ((j2 % 3600000) / 60000) + ":" + ((j2 % 60000) / 1000);
                                                long j14 = j2;
                                                MusicTrack musicTrack10 = new MusicTrack(str6, ContentTree.AUDIO_ID, string2, string4, string3, new PersonWithRole(string4, "Performer"), res10);
                                                rootNode.getContainer().o.add(musicTrack10);
                                                rootNode.getContainer().f78601k = Integer.valueOf(rootNode.getContainer().f78601k.intValue() + 1);
                                                ContentTree.addNode(str6, new ContentNode(str6, musicTrack10, string5));
                                                lPMSLibraryPlayItem = new LPMSLibraryPlayItem();
                                                if (string3 == null) {
                                                    str2 = "";
                                                } else {
                                                    str2 = string3;
                                                }
                                                lPMSLibraryPlayItem.setAlbumName(str2);
                                                lPMSLibraryPlayItem.setTrackImage("");
                                                if (string4 == null) {
                                                    str3 = "";
                                                } else {
                                                    str3 = string4;
                                                }
                                                lPMSLibraryPlayItem.setTrackArtist(str3);
                                                lPMSLibraryPlayItem.setTrackUrl(FinalDataUtil.HTTP_HEAD + FinalDataUtil.makeIPV4IP(this.application) + ":" + MediaServer.port + "/" + str6);
                                                lPMSLibraryPlayItem.setLocal_id(str6);
                                                if (string2 == null) {
                                                    str4 = "";
                                                } else {
                                                    str4 = string2;
                                                }
                                                lPMSLibraryPlayItem.setTrackName(str4);
                                                lPMSLibraryPlayItem.setTrackDuration((int) j14);
                                                lPMSLibraryPlayItem.setArtistId(i4 + "");
                                                lPMSLibraryPlayItem.setAlbumId(string7);
                                                if (string8 == null) {
                                                    str5 = "2147483647";
                                                } else if (string8.trim().length() != 0) {
                                                    str5 = "2147483647";
                                                } else {
                                                    str5 = "2147483647";
                                                }
                                                lPMSLibraryPlayItem.setTrack(str5);
                                                lPMSLibraryPlayItem.setTrackId(str6);
                                                i2 = i6;
                                                lPMSLibraryPlayItem.setSongCount(i2);
                                                if (musicSplitPageItem.classify == ELocSearchType.LP_GENRE) {
                                                    lPMSLibraryPlayItem.setGenreName(getGenreName(Integer.parseInt(str6.replaceAll(ContentTree.AUDIO_PREFIX, ""))));
                                                }
                                                map = map2;
                                                map.put(str6, lPMSLibraryPlayItem);
                                            } else {
                                                i2 = i6;
                                                map = map2;
                                            }
                                            i3 = i2;
                                            map2 = map;
                                            cursorQuery = cursor;
                                        }
                                    }
                                    return map.values();
                                }
                                i3 = i6;
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        } catch (Exception e8) {
                            e = e8;
                            map = map2;
                        }
                    }
                }
                map = map2;
                Cursor cursor2 = cursorQuery;
                if (cursor2 != null) {
                    cursor2.close();
                }
            } catch (Exception e9) {
                e = e9;
            }
            return map.values();
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Collection<LPMSLibraryPlayItem> searchSonglists(MusicSplitPageItem musicSplitPageItem) {
        HashMap map = new HashMap();
        Container container = new Container(ContentTree.AUDIO_ID, ContentTree.ROOT_ID, "Audios", "GNaP MediaServer", new DIDLObject.Class("object.container"), (Integer) 0);
        container.f78572e = true;
        container.f78573f = WriteStatus.NOT_WRITABLE;
        String[] strArr = {"_id", "_data", "mime_type"};
        int i2 = musicSplitPageItem.page;
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = this.application.getContentResolver().query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, strArr, null, null, "  _id ");
                if (cursorQuery != null) {
                    while (cursorQuery.moveToNext()) {
                        int i3 = cursorQuery.getInt(cursorQuery.getColumnIndex("_id"));
                        String str = ContentTree.AUDIO_PREFIX + i3;
                        String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                        String string2 = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("mime_type"));
                        if (string2 == null || !string2.contains("audio")) {
                            int iLastIndexOf = string.lastIndexOf(com.sightcall.universal.media.offline.FileUtils.HIDDEN_PREFIX);
                            if (iLastIndexOf > -1) {
                                String strSubstring = string.substring(iLastIndexOf);
                                if (isSupportedSubType(strSubstring)) {
                                    string2 = "audio/" + strSubstring;
                                }
                            }
                        }
                        if (isSupportedMimeType(string2)) {
                            LPMSLibraryPlayItem lPMSLibraryPlayItem = new LPMSLibraryPlayItem();
                            lPMSLibraryPlayItem.setFileId(i3);
                            lPMSLibraryPlayItem.setSonglist(getFileDir(string));
                            lPMSLibraryPlayItem.setFolderName(getFolderName(string));
                            lPMSLibraryPlayItem.setLocal_id(str);
                            ArrayList arrayList = new ArrayList();
                            arrayList.addAll(map.values());
                            int i4 = 0;
                            while (true) {
                                if (i4 >= arrayList.size()) {
                                    lPMSLibraryPlayItem.setSongCount(lPMSLibraryPlayItem.getSongCount() + 1);
                                    map.put(str, lPMSLibraryPlayItem);
                                    break;
                                }
                                LPMSLibraryPlayItem lPMSLibraryPlayItem2 = (LPMSLibraryPlayItem) arrayList.get(i4);
                                if (lPMSLibraryPlayItem2.getSonglist().equals(lPMSLibraryPlayItem.getSonglist())) {
                                    lPMSLibraryPlayItem2.setSongCount(lPMSLibraryPlayItem2.getSongCount() + 1);
                                    break;
                                }
                                i4++;
                            }
                        }
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return map.values();
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
    }

    private void searchSongsByKey(LPPlayHeader lPPlayHeader, final String str, final ELocSearchType eLocSearchType, final LPSearchMediaResultListener lPSearchMediaResultListener) {
        if (lPPlayHeader == null) {
            lPPlayHeader = new LPPlayHeader();
        }
        final LPPlayHeader lPPlayHeader2 = lPPlayHeader;
        if (lPPlayHeader2.getCurrentPage() < 1) {
            lPPlayHeader2.setCurrentPage(1);
        } else {
            lPPlayHeader2.setCurrentPage(lPPlayHeader2.getCurrentPage());
        }
        if (lPPlayHeader2.getPerPage() < 1) {
            lPPlayHeader2.setPerPage(50);
        } else {
            lPPlayHeader2.setPerPage(lPPlayHeader2.getPerPage());
        }
        lPPlayHeader2.setMediaType("SONGLIST-LOCAL");
        lPPlayHeader2.setMediaSource(LPPlaySourceType.LP_LOCALMUSIC);
        new Thread(new Runnable() { // from class: com.linkplay.medialib.LPMSLibraryManager.1
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                Collection collectionSearchAudios = LPMSLibraryManager.this.searchAudios(new MusicSplitPageItem(true, lPPlayHeader2.getPerPage(), lPPlayHeader2.getCurrentPage(), eLocSearchType, str.replace("'", "''"), true));
                if (lPSearchMediaResultListener != null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(collectionSearchAudios);
                    LPPlayMusicList lPPlayMusicList = new LPPlayMusicList();
                    lPPlayMusicList.setHeader(lPPlayHeader2);
                    lPPlayMusicList.setList(arrayList);
                    lPSearchMediaResultListener.success(lPPlayMusicList);
                }
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:41:0x0150  */
    /* JADX WARN: Code duplicated, block: B:44:0x015a  */
    /* JADX WARN: Code duplicated, block: B:45:0x015b  */
    /* JADX WARN: Code duplicated, block: B:46:0x015d A[PHI: r19 r20
      0x015d: PHI (r19v5 java.lang.String) = (r19v6 java.lang.String), (r19v6 java.lang.String), (r19v7 java.lang.String) binds: [B:49:0x016b, B:51:0x0175, B:45:0x015b] A[DONT_GENERATE, DONT_INLINE]
      0x015d: PHI (r20v2 java.lang.String) = (r20v3 java.lang.String), (r20v3 java.lang.String), (r20v4 java.lang.String) binds: [B:49:0x016b, B:51:0x0175, B:45:0x015b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:47:0x0160  */
    /* JADX WARN: Code duplicated, block: B:50:0x016d A[Catch: all -> 0x0132, Exception -> 0x0139, TryCatch #0 {all -> 0x0132, blocks: (B:26:0x0121, B:28:0x0127, B:42:0x0152, B:48:0x0162, B:54:0x018d, B:56:0x0193, B:60:0x022c, B:64:0x0238, B:68:0x026c, B:70:0x02ad, B:72:0x02b7, B:74:0x02c3, B:79:0x02d4, B:50:0x016d, B:52:0x0177), top: B:96:0x0121 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x0177 A[Catch: all -> 0x0132, Exception -> 0x0139, TryCatch #0 {all -> 0x0132, blocks: (B:26:0x0121, B:28:0x0127, B:42:0x0152, B:48:0x0162, B:54:0x018d, B:56:0x0193, B:60:0x022c, B:64:0x0238, B:68:0x026c, B:70:0x02ad, B:72:0x02b7, B:74:0x02c3, B:79:0x02d4, B:50:0x016d, B:52:0x0177), top: B:96:0x0121 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x0193 A[Catch: all -> 0x0132, Exception -> 0x0139, TryCatch #0 {all -> 0x0132, blocks: (B:26:0x0121, B:28:0x0127, B:42:0x0152, B:48:0x0162, B:54:0x018d, B:56:0x0193, B:60:0x022c, B:64:0x0238, B:68:0x026c, B:70:0x02ad, B:72:0x02b7, B:74:0x02c3, B:79:0x02d4, B:50:0x016d, B:52:0x0177), top: B:96:0x0121 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x0228  */
    /* JADX WARN: Code duplicated, block: B:59:0x022a  */
    /* JADX WARN: Code duplicated, block: B:62:0x0234  */
    /* JADX WARN: Code duplicated, block: B:63:0x0236  */
    /* JADX WARN: Code duplicated, block: B:66:0x0268  */
    /* JADX WARN: Code duplicated, block: B:67:0x026a  */
    /* JADX WARN: Code duplicated, block: B:70:0x02ad A[Catch: all -> 0x0132, Exception -> 0x0139, TryCatch #0 {all -> 0x0132, blocks: (B:26:0x0121, B:28:0x0127, B:42:0x0152, B:48:0x0162, B:54:0x018d, B:56:0x0193, B:60:0x022c, B:64:0x0238, B:68:0x026c, B:70:0x02ad, B:72:0x02b7, B:74:0x02c3, B:79:0x02d4, B:50:0x016d, B:52:0x0177), top: B:96:0x0121 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x02d1  */
    /* JADX WARN: Instruction removed from duplicated block: B:52:0x0177, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:56:0x0193, please report this as an issue */
    public Collection<LPMSLibraryPlayItem> searchSongsBySonglist(MusicSplitPageItem musicSplitPageItem) throws Throwable {
        ContentNode contentNode;
        Cursor cursor;
        String strSubstring;
        String strSubstring2;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        int iLastIndexOf;
        String strSubstring3;
        musicSplitPageItem = musicSplitPageItem;
        HashMap map = new HashMap();
        if (musicSplitPageItem == null) {
            return map.values();
        }
        ContentNode rootNode = ContentTree.getRootNode();
        Container container = new Container(ContentTree.AUDIO_ID, ContentTree.ROOT_ID, "Audios", "GNaP MediaServer", new DIDLObject.Class("object.container"), (Integer) 0);
        boolean z = true;
        container.f78572e = true;
        container.f78573f = WriteStatus.NOT_WRITABLE;
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = this.application.getContentResolver().query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, new String[]{"_id", "title", "_data", "artist", "mime_type", "_size", "duration", "album", "album_id", "track", "artist_id"}, null, null, " _id ");
                if (cursorQuery != null) {
                    while (cursorQuery.moveToNext()) {
                        try {
                            int i2 = cursorQuery.getInt(cursorQuery.getColumnIndex("artist_id"));
                            int i3 = cursorQuery.getInt(cursorQuery.getColumnIndex("_id"));
                            String str8 = ContentTree.AUDIO_PREFIX + i3;
                            String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("title"));
                            String string2 = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("artist"));
                            String string3 = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                            String string4 = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("mime_type"));
                            long j2 = cursorQuery.getLong(cursorQuery.getColumnIndexOrThrow("_size"));
                            z = z;
                            long j3 = cursorQuery.getLong(cursorQuery.getColumnIndexOrThrow("duration"));
                            String string5 = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("album"));
                            String string6 = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("track"));
                            String string7 = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("album_id"));
                            if (musicSplitPageItem.searchKey.equals(getFileDir(string3)) && j3 > 0 && j2 > 0) {
                                if (string4 == null || !string4.contains("/")) {
                                    contentNode = rootNode;
                                    cursor = cursorQuery;
                                    strSubstring = string4;
                                } else {
                                    contentNode = rootNode;
                                    cursor = cursorQuery;
                                    try {
                                        try {
                                            strSubstring = string4.substring(0, string4.indexOf("/"));
                                            try {
                                                strSubstring2 = string4.substring(string4.indexOf(47) + 1);
                                            } catch (Exception unused) {
                                                strSubstring2 = "";
                                            }
                                            if (string4 != null) {
                                                str = string5;
                                                if (!string4.contains("audio")) {
                                                    str7 = string4;
                                                }
                                                str2 = str7;
                                                if (isSupportedMimeType(str2)) {
                                                    Res res = new Res(new MimeType(strSubstring, strSubstring2), Long.valueOf(j2), "http://#IP_Param#" + str8);
                                                    res.f78597a = (j3 / 3600000) + ":" + ((j3 % 3600000) / 60000) + ":" + ((j3 % 60000) / 1000);
                                                    str3 = str;
                                                    MusicTrack musicTrack = new MusicTrack(str8, ContentTree.AUDIO_ID, string, string2, str3, new PersonWithRole(string2, "Performer"), res);
                                                    contentNode.getContainer().o.add(musicTrack);
                                                    contentNode.getContainer().f78601k = Integer.valueOf(contentNode.getContainer().f78601k.intValue() + 1);
                                                    ContentTree.addNode(str8, new ContentNode(str8, musicTrack, string3));
                                                    LPMSLibraryPlayItem lPMSLibraryPlayItem = new LPMSLibraryPlayItem();
                                                    if (str3 == null) {
                                                        str4 = "";
                                                    } else {
                                                        str4 = str3;
                                                    }
                                                    lPMSLibraryPlayItem.setAlbumName(str4);
                                                    lPMSLibraryPlayItem.setTrackImage("");
                                                    if (string2 == null) {
                                                        str5 = "";
                                                    } else {
                                                        str5 = string2;
                                                    }
                                                    lPMSLibraryPlayItem.setTrackArtist(str5);
                                                    lPMSLibraryPlayItem.setTrackUrl(FinalDataUtil.HTTP_HEAD + FinalDataUtil.makeIPV4IP(this.application) + ":" + MediaServer.port + "/" + str8);
                                                    lPMSLibraryPlayItem.setLocal_id(str8);
                                                    if (string == null) {
                                                        str6 = "";
                                                    } else {
                                                        str6 = string;
                                                    }
                                                    lPMSLibraryPlayItem.setTrackName(str6);
                                                    lPMSLibraryPlayItem.setTrackDuration(j3);
                                                    lPMSLibraryPlayItem.setArtistId(i2 + "");
                                                    lPMSLibraryPlayItem.setAlbumId(string7);
                                                    lPMSLibraryPlayItem.setTrackId(str8);
                                                    lPMSLibraryPlayItem.setFileId(i3);
                                                    lPMSLibraryPlayItem.setSonglist(getFileDir(string3));
                                                    lPMSLibraryPlayItem.setFolderName(getFolderName(string3));
                                                    lPMSLibraryPlayItem.setFilePath(string3);
                                                    lPMSLibraryPlayItem.setCurrDirArr(getCurrDir(getFileDir(string3)));
                                                    if (string6 != null || string6.trim().length() == 0 || string6.trim().equals(ContentTree.ROOT_ID) || string6.trim().equals("")) {
                                                        string6 = "2147483647";
                                                    }
                                                    lPMSLibraryPlayItem.setTrack(string6);
                                                    map.put(str8, lPMSLibraryPlayItem);
                                                }
                                                rootNode = contentNode;
                                                cursorQuery = cursor;
                                            } else {
                                                str = string5;
                                            }
                                            iLastIndexOf = string3.lastIndexOf(com.sightcall.universal.media.offline.FileUtils.HIDDEN_PREFIX);
                                            str7 = string4;
                                            if (iLastIndexOf > -1) {
                                                strSubstring3 = string3.substring(iLastIndexOf);
                                                if (isSupportedSubType(strSubstring3)) {
                                                    str2 = "audio/" + strSubstring3;
                                                } else {
                                                    str2 = str7;
                                                }
                                            } else {
                                                str2 = str7;
                                            }
                                            if (isSupportedMimeType(str2)) {
                                                Res res2 = new Res(new MimeType(strSubstring, strSubstring2), Long.valueOf(j2), "http://#IP_Param#" + str8);
                                                res2.f78597a = (j3 / 3600000) + ":" + ((j3 % 3600000) / 60000) + ":" + ((j3 % 60000) / 1000);
                                                str3 = str;
                                                MusicTrack musicTrack2 = new MusicTrack(str8, ContentTree.AUDIO_ID, string, string2, str3, new PersonWithRole(string2, "Performer"), res2);
                                                contentNode.getContainer().o.add(musicTrack2);
                                                contentNode.getContainer().f78601k = Integer.valueOf(contentNode.getContainer().f78601k.intValue() + 1);
                                                ContentTree.addNode(str8, new ContentNode(str8, musicTrack2, string3));
                                                LPMSLibraryPlayItem lPMSLibraryPlayItem2 = new LPMSLibraryPlayItem();
                                                if (str3 == null) {
                                                    str4 = "";
                                                } else {
                                                    str4 = str3;
                                                }
                                                lPMSLibraryPlayItem2.setAlbumName(str4);
                                                lPMSLibraryPlayItem2.setTrackImage("");
                                                if (string2 == null) {
                                                    str5 = "";
                                                } else {
                                                    str5 = string2;
                                                }
                                                lPMSLibraryPlayItem2.setTrackArtist(str5);
                                                lPMSLibraryPlayItem2.setTrackUrl(FinalDataUtil.HTTP_HEAD + FinalDataUtil.makeIPV4IP(this.application) + ":" + MediaServer.port + "/" + str8);
                                                lPMSLibraryPlayItem2.setLocal_id(str8);
                                                if (string == null) {
                                                    str6 = "";
                                                } else {
                                                    str6 = string;
                                                }
                                                lPMSLibraryPlayItem2.setTrackName(str6);
                                                lPMSLibraryPlayItem2.setTrackDuration(j3);
                                                lPMSLibraryPlayItem2.setArtistId(i2 + "");
                                                lPMSLibraryPlayItem2.setAlbumId(string7);
                                                lPMSLibraryPlayItem2.setTrackId(str8);
                                                lPMSLibraryPlayItem2.setFileId(i3);
                                                lPMSLibraryPlayItem2.setSonglist(getFileDir(string3));
                                                lPMSLibraryPlayItem2.setFolderName(getFolderName(string3));
                                                lPMSLibraryPlayItem2.setFilePath(string3);
                                                lPMSLibraryPlayItem2.setCurrDirArr(getCurrDir(getFileDir(string3)));
                                                if (string6 != null) {
                                                    string6 = "2147483647";
                                                } else {
                                                    string6 = "2147483647";
                                                }
                                                lPMSLibraryPlayItem2.setTrack(string6);
                                                map.put(str8, lPMSLibraryPlayItem2);
                                            }
                                            rootNode = contentNode;
                                            cursorQuery = cursor;
                                        } catch (Throwable th) {
                                            th = th;
                                            cursorQuery = cursor;
                                            if (cursorQuery != null) {
                                                cursorQuery.close();
                                            }
                                            throw th;
                                        }
                                    } catch (Exception e2) {
                                        e = e2;
                                        cursorQuery = cursor;
                                        e.printStackTrace();
                                        if (cursorQuery != null) {
                                            cursorQuery.close();
                                        }
                                        return map.values();
                                    }
                                }
                                strSubstring2 = "";
                                if (string4 != null) {
                                    str = string5;
                                    if (!string4.contains("audio")) {
                                        str7 = string4;
                                    }
                                    str2 = str7;
                                    if (isSupportedMimeType(str2)) {
                                        Res res3 = new Res(new MimeType(strSubstring, strSubstring2), Long.valueOf(j2), "http://#IP_Param#" + str8);
                                        res3.f78597a = (j3 / 3600000) + ":" + ((j3 % 3600000) / 60000) + ":" + ((j3 % 60000) / 1000);
                                        str3 = str;
                                        MusicTrack musicTrack3 = new MusicTrack(str8, ContentTree.AUDIO_ID, string, string2, str3, new PersonWithRole(string2, "Performer"), res3);
                                        contentNode.getContainer().o.add(musicTrack3);
                                        contentNode.getContainer().f78601k = Integer.valueOf(contentNode.getContainer().f78601k.intValue() + 1);
                                        ContentTree.addNode(str8, new ContentNode(str8, musicTrack3, string3));
                                        LPMSLibraryPlayItem lPMSLibraryPlayItem3 = new LPMSLibraryPlayItem();
                                        if (str3 == null) {
                                            str4 = "";
                                        } else {
                                            str4 = str3;
                                        }
                                        lPMSLibraryPlayItem3.setAlbumName(str4);
                                        lPMSLibraryPlayItem3.setTrackImage("");
                                        if (string2 == null) {
                                            str5 = "";
                                        } else {
                                            str5 = string2;
                                        }
                                        lPMSLibraryPlayItem3.setTrackArtist(str5);
                                        lPMSLibraryPlayItem3.setTrackUrl(FinalDataUtil.HTTP_HEAD + FinalDataUtil.makeIPV4IP(this.application) + ":" + MediaServer.port + "/" + str8);
                                        lPMSLibraryPlayItem3.setLocal_id(str8);
                                        if (string == null) {
                                            str6 = "";
                                        } else {
                                            str6 = string;
                                        }
                                        lPMSLibraryPlayItem3.setTrackName(str6);
                                        lPMSLibraryPlayItem3.setTrackDuration(j3);
                                        lPMSLibraryPlayItem3.setArtistId(i2 + "");
                                        lPMSLibraryPlayItem3.setAlbumId(string7);
                                        lPMSLibraryPlayItem3.setTrackId(str8);
                                        lPMSLibraryPlayItem3.setFileId(i3);
                                        lPMSLibraryPlayItem3.setSonglist(getFileDir(string3));
                                        lPMSLibraryPlayItem3.setFolderName(getFolderName(string3));
                                        lPMSLibraryPlayItem3.setFilePath(string3);
                                        lPMSLibraryPlayItem3.setCurrDirArr(getCurrDir(getFileDir(string3)));
                                        if (string6 != null) {
                                            string6 = "2147483647";
                                        } else {
                                            string6 = "2147483647";
                                        }
                                        lPMSLibraryPlayItem3.setTrack(string6);
                                        map.put(str8, lPMSLibraryPlayItem3);
                                    }
                                    rootNode = contentNode;
                                    cursorQuery = cursor;
                                } else {
                                    str = string5;
                                }
                                iLastIndexOf = string3.lastIndexOf(com.sightcall.universal.media.offline.FileUtils.HIDDEN_PREFIX);
                                str7 = string4;
                                if (iLastIndexOf > -1) {
                                    strSubstring3 = string3.substring(iLastIndexOf);
                                    if (isSupportedSubType(strSubstring3)) {
                                        str2 = "audio/" + strSubstring3;
                                    } else {
                                        str2 = str7;
                                    }
                                } else {
                                    str2 = str7;
                                }
                                if (isSupportedMimeType(str2)) {
                                    Res res4 = new Res(new MimeType(strSubstring, strSubstring2), Long.valueOf(j2), "http://#IP_Param#" + str8);
                                    res4.f78597a = (j3 / 3600000) + ":" + ((j3 % 3600000) / 60000) + ":" + ((j3 % 60000) / 1000);
                                    str3 = str;
                                    MusicTrack musicTrack4 = new MusicTrack(str8, ContentTree.AUDIO_ID, string, string2, str3, new PersonWithRole(string2, "Performer"), res4);
                                    contentNode.getContainer().o.add(musicTrack4);
                                    contentNode.getContainer().f78601k = Integer.valueOf(contentNode.getContainer().f78601k.intValue() + 1);
                                    ContentTree.addNode(str8, new ContentNode(str8, musicTrack4, string3));
                                    LPMSLibraryPlayItem lPMSLibraryPlayItem4 = new LPMSLibraryPlayItem();
                                    if (str3 == null) {
                                        str4 = "";
                                    } else {
                                        str4 = str3;
                                    }
                                    lPMSLibraryPlayItem4.setAlbumName(str4);
                                    lPMSLibraryPlayItem4.setTrackImage("");
                                    if (string2 == null) {
                                        str5 = "";
                                    } else {
                                        str5 = string2;
                                    }
                                    lPMSLibraryPlayItem4.setTrackArtist(str5);
                                    lPMSLibraryPlayItem4.setTrackUrl(FinalDataUtil.HTTP_HEAD + FinalDataUtil.makeIPV4IP(this.application) + ":" + MediaServer.port + "/" + str8);
                                    lPMSLibraryPlayItem4.setLocal_id(str8);
                                    if (string == null) {
                                        str6 = "";
                                    } else {
                                        str6 = string;
                                    }
                                    lPMSLibraryPlayItem4.setTrackName(str6);
                                    lPMSLibraryPlayItem4.setTrackDuration(j3);
                                    lPMSLibraryPlayItem4.setArtistId(i2 + "");
                                    lPMSLibraryPlayItem4.setAlbumId(string7);
                                    lPMSLibraryPlayItem4.setTrackId(str8);
                                    lPMSLibraryPlayItem4.setFileId(i3);
                                    lPMSLibraryPlayItem4.setSonglist(getFileDir(string3));
                                    lPMSLibraryPlayItem4.setFolderName(getFolderName(string3));
                                    lPMSLibraryPlayItem4.setFilePath(string3);
                                    lPMSLibraryPlayItem4.setCurrDirArr(getCurrDir(getFileDir(string3)));
                                    if (string6 != null) {
                                        string6 = "2147483647";
                                    } else {
                                        string6 = "2147483647";
                                    }
                                    lPMSLibraryPlayItem4.setTrack(string6);
                                    map.put(str8, lPMSLibraryPlayItem4);
                                }
                                rootNode = contentNode;
                                cursorQuery = cursor;
                            }
                        } catch (Exception e3) {
                            e = e3;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    }
                }
                Cursor cursor2 = cursorQuery;
                if (cursor2 != null) {
                    cursor2.close();
                }
            } catch (Exception e4) {
                e = e4;
            }
            return map.values();
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public LPAccount getAccount() {
        LPAccount lPAccount = new LPAccount();
        String str = LPPlaySourceType.LP_LOCALMUSIC;
        lPAccount.setSource(str);
        lPAccount.setUserId(str);
        lPAccount.setUserName(str);
        return lPAccount;
    }

    public String getAlbumArt(LPMSLibraryPlayItem lPMSLibraryPlayItem) {
        LPMSLibraryPlayItem imageFromLocal = getImageFromLocal(lPMSLibraryPlayItem);
        if (imageFromLocal == null) {
            return "";
        }
        if (!TextUtils.isEmpty(imageFromLocal.getTrackImage())) {
            FileUtils fileUtils = FileUtils.getInstance(this.application.getApplicationContext());
            if (fileUtils.getFile(imageFromLocal.getTrackImage()) == null) {
                fileUtils.saveFile(imageFromLocal.getTrackImage());
            }
            imageFromLocal.setTrackImage(getLocalIPUrl(FinalDataUtil.makeIPV4IP(this.application), fileUtils.getSDFilePath(imageFromLocal.getTrackImage())));
        }
        return imageFromLocal.getTrackImage() == null ? "" : imageFromLocal.getTrackImage();
    }

    public int getCount() {
        Cursor cursorQuery = null;
        int i2 = 0;
        try {
            try {
                cursorQuery = this.application.getApplicationContext().getContentResolver().query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, new String[]{"_id", "mime_type"}, null, null, null);
                if (cursorQuery == null) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return 0;
                }
                while (cursorQuery.moveToNext()) {
                    String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("mime_type"));
                    String strSubstring = "";
                    if (string != null && string.contains("/")) {
                        try {
                            strSubstring = string.substring(string.indexOf(47) + 1);
                        } catch (Exception unused) {
                        }
                    }
                    if (isSupportedSubType(strSubstring)) {
                        i2++;
                    }
                }
                cursorQuery.close();
                return i2;
            } catch (Throwable th) {
                if (0 == 0) {
                    throw th;
                }
                cursorQuery.close();
                throw th;
            }
        } catch (Exception unused2) {
            if (0 != 0) {
            }
            return i2;
        }
    }

    public void searchAlbumSongs(String str, LPPlayHeader lPPlayHeader, LPSearchMediaResultListener lPSearchMediaResultListener) {
        searchSongsByKey(lPPlayHeader, str, ELocSearchType.LP_ALBUM, lPSearchMediaResultListener);
    }

    public void searchAlbums(LPPlayHeader lPPlayHeader, LPSearchMediaResultListener lPSearchMediaResultListener) {
        search(lPPlayHeader, ELocSearchType.LP_ALBUM, lPSearchMediaResultListener);
    }

    public void searchArtistSongs(String str, LPPlayHeader lPPlayHeader, LPSearchMediaResultListener lPSearchMediaResultListener) {
        searchSongsByKey(lPPlayHeader, str, ELocSearchType.LP_ARTIST, lPSearchMediaResultListener);
    }

    public void searchArtists(LPPlayHeader lPPlayHeader, LPSearchMediaResultListener lPSearchMediaResultListener) {
        search(lPPlayHeader, ELocSearchType.LP_ARTIST, lPSearchMediaResultListener);
    }

    public void searchSonglistSongs(final String str, final LPPlayHeader lPPlayHeader, final LPSearchMediaResultListener lPSearchMediaResultListener) {
        if (lPPlayHeader == null) {
            lPPlayHeader = new LPPlayHeader();
        }
        if (lPPlayHeader.getCurrentPage() < 1) {
            lPPlayHeader.setCurrentPage(1);
        } else {
            lPPlayHeader.setCurrentPage(lPPlayHeader.getCurrentPage());
        }
        if (lPPlayHeader.getPerPage() < 1) {
            lPPlayHeader.setPerPage(50);
        } else {
            lPPlayHeader.setPerPage(lPPlayHeader.getPerPage());
        }
        lPPlayHeader.setMediaType("SONGLIST-LOCAL");
        lPPlayHeader.setMediaSource(LPPlaySourceType.LP_LOCALMUSIC);
        new Thread(new Runnable() { // from class: com.linkplay.medialib.LPMSLibraryManager.4
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                Collection collectionSearchSongsBySonglist = LPMSLibraryManager.this.searchSongsBySonglist(new MusicSplitPageItem(true, lPPlayHeader.getPerPage(), lPPlayHeader.getCurrentPage(), ELocSearchType.LP_SONGS, str, true));
                if (lPSearchMediaResultListener != null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(collectionSearchSongsBySonglist);
                    LPPlayMusicList lPPlayMusicList = new LPPlayMusicList();
                    lPPlayMusicList.setHeader(lPPlayHeader);
                    lPPlayMusicList.setList(arrayList);
                    lPSearchMediaResultListener.success(lPPlayMusicList);
                }
            }
        }).start();
    }

    public void searchSongs(LPPlayHeader lPPlayHeader, LPSearchMediaResultListener lPSearchMediaResultListener) {
        search(lPPlayHeader, ELocSearchType.LP_SONGS, lPSearchMediaResultListener);
    }

    private String getAlbumArt(long j2) {
        Cursor cursorQuery = this.application.getApplicationContext().getContentResolver().query(Uri.parse("content://media/external/audio/albums/" + Long.toString(j2)), new String[]{"album_art"}, null, null, null);
        String string = "";
        if (cursorQuery != null) {
            if (cursorQuery.getCount() > 0 && cursorQuery.getColumnCount() > 0) {
                cursorQuery.moveToNext();
                string = cursorQuery.getString(0);
            }
            cursorQuery.close();
        }
        return string;
    }

    public void searchSonglists(final LPPlayHeader lPPlayHeader, final LPSearchMediaResultListener lPSearchMediaResultListener) {
        if (lPPlayHeader == null) {
            lPPlayHeader = new LPPlayHeader();
        }
        if (lPPlayHeader.getCurrentPage() < 1) {
            lPPlayHeader.setCurrentPage(1);
        } else {
            lPPlayHeader.setCurrentPage(lPPlayHeader.getCurrentPage());
        }
        if (lPPlayHeader.getPerPage() < 1) {
            lPPlayHeader.setPerPage(50);
        } else {
            lPPlayHeader.setPerPage(lPPlayHeader.getPerPage());
        }
        lPPlayHeader.setMediaType("SONGLIST-LOCAL");
        lPPlayHeader.setMediaSource(LPPlaySourceType.LP_LOCALMUSIC);
        new Thread(new Runnable() { // from class: com.linkplay.medialib.LPMSLibraryManager.3
            @Override // java.lang.Runnable
            public void run() {
                Collection collectionSearchSonglists = LPMSLibraryManager.this.searchSonglists(new MusicSplitPageItem(true, lPPlayHeader.getPerPage(), lPPlayHeader.getCurrentPage()));
                if (lPSearchMediaResultListener != null) {
                    LPPlayMusicList lPPlayMusicList = new LPPlayMusicList();
                    lPPlayMusicList.setHeader(lPPlayHeader);
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(collectionSearchSonglists);
                    lPPlayMusicList.setList(arrayList);
                    lPSearchMediaResultListener.success(lPPlayMusicList);
                }
            }
        }).start();
    }
}
