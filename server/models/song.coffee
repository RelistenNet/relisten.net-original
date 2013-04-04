{ Schema } = mongoose = require 'mongoose'

songSchema = new Schema
  genre: String
  albumId: Number
  album: String
  track: Number
  parent: Number
  contentType: String
  isDir: Boolean
  type: String
  suffix: String
  isVideo: Boolean
  size: Number
  transcodedSuffix: String
  id: String
  transcodedContentType: String
  title: String
  duration: Number
  artistId: Number
  created: String
  path: String
  year: Number
  artist: String
  bitRate: Number
  month: Number
  day: Number
  year: Number
  slug: String
  version: Number, default: 0
  showVersion: Number, default: 0
  longSlug: String
  longDay: String
  _show: type: Schema.Types.ObjectId, ref: 'Show'

Song = mongoose.model 'Song', songSchema
